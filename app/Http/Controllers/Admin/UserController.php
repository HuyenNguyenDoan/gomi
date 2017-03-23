<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use Session;
use DB;
use Hash;
use Illuminate\Pagination\LengthAwarePaginator;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $keyword = '';
        if($keyword=$request->search){
           $list=User::orderBy('id','ASC')
                   ->where(function ($query) use ($keyword){
                    $query->orwhere('name','like',"%$keyword%")
                          ->orwhere('email','like',"%$keyword%");      
                   })
                   ->paginate(5);
        } else {
           $list=User::orderBy( 'id', 'ASC' )
                   ->paginate(5);
        }
       
        return view('admin.user.list',['list'=>$list,'keyword'=>$keyword]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      return view('admin.user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name'     => 'required',
            'address' => 'required',
            'email'    => 'required|email|unique:users,email',
            'password' => 'required|same:password_confirmation',
            'birthday' => 'required',
        ]);
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->phone =  $request->phone;
        $user->address =  $request->address;
        $user->gender =  $request->gender;
        $user->birthday =  $request->birthday; 
        $user->level =  $request->level;
        $user->save();
        Session::flash('success', 'Thêm mới người dùng thành công ');

        return redirect('admin/user');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::find($id);

        return view('admin.user.edit', ['user' =>$user ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $this->validate($request, [
            'name'     => 'required',
            'address' => 'required',
            'email'    => 'required|email|',
            'password' => 'same:password_confirmation'
        ]);

        $requestData = $request->all();
        $requestData['password'] = ($requestData['password'] != '') ?
         Hash::make($requestData['password']) : $user->password;
        $requestData['level'] = isset($requestData['level']) ? true : false;
        $user->update($requestData);
        Session::flash('success', 'Cập nhật  "'.$user->name.'" Thành công');

        return redirect('admin/user');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $user = User::find($id);
        $user->delete();
        Session::flash('success', 'Xóa Người dùng "'.$user->name.'" thành công');

        return redirect('admin/user');
    }
    
    public function getLogin()
    {
        return view('admin.login');
    }

    public function postLogin(Request $request)
    {
        $this->validate($request,
            [
              'email' =>'required',
              'password'=>'required'
            ]);
         if (Auth::attempt(['email'=>$request->email ,'password'=>$request->password])) {

            return redirect('admin'); 
         }
         else {
           Session::flash('error', 'Sign in not successfully !!!');

           return redirect('admin/login');
         }
    }

    public function getLogout()
    {
        Auth::logout();

        return redirect('admin/login');
    }
}
