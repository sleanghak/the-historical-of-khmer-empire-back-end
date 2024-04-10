<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Routing\Controller;
use Modules\Role\Entities\Roles;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Response;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request){
        $query = User::query();
        $dateFilter = $request->date_filter;
        $search = $request->search;
        switch($dateFilter){
            case 'today':
                $query->whereDate('created_at',Carbon::today());
                break;
            case 'yesterday':
                $query->wheredate('created_at',Carbon::yesterday());
                break;
            case 'this_week':
                $query->whereBetween('created_at',[Carbon::now()->startOfWeek(),Carbon::now()->endOfWeek()]);
                break;
            case 'last_week':
                $query->whereBetween('created_at',[Carbon::now()->subWeek(),Carbon::now()]);
                break;
            case 'this_month':
                $query->whereMonth('created_at',Carbon::now()->month);
                break;
            case 'last_month':
                $query->whereMonth('created_at',Carbon::now()->subMonth()->month);
                break;
            case 'this_year':
                $query->whereYear('created_at',Carbon::now()->year);
                break;
            case 'last_year':
                $query->whereYear('created_at',Carbon::now()->subYear()->year);
                break;                       
        }
        $items = $query->where('name', 'LIKE', '%'. $search .'%')->orderBy('created_at', 'desc')->paginate(10);
        return view('users.index',compact(['items','dateFilter','search']));
        
    }

    public function create()
    {
        $form="";
        $form ='
        <div class="vr-popup-add-new">
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">Add User</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <form class="form-card form_submit" action="/dashboard/user" method="post" enctype="multipart/form-data">
                '.csrf_field().'
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Name<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" name="name" placeholder="Enter your name" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Email<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" name="email" placeholder="Enter your email" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Password<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" name="password" placeholder="Enter your password" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Position<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" name="position" placeholder="Enter your position" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Image<span class="text-danger"> *</span></label> 
                            <input type="file" name="profile">
                        </div>
                    </div>
                    
                    <div class="vr-btn-addnew">
                         <button type="submit" class="btn-block btn-primary">Add new</button>
                    </div>
                </form>
            </div>
        </div>
        ';
        return response()->json([
            'result'=> $form,
            'status'=>true,
        ]); 
    }

    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'profile' => 'required',
            'position' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);
        if ($validate->fails())
        {return response()->json($validate->errors()); }

        if($request->hasfile('profile'))
        {
            try {
                $file = $request->file('profile');
                $extenstion = $file->getClientOriginalExtension();
                $filename = rand(1,9999).'.'.$extenstion;
                $file->move(public_path('storage/users'), $filename);
              } catch (\Exception $e) {
                  return $e->getMessage();
              }
        }

        $item = User::create([
            'name'      =>$request->name,
            'position'  => $request->position,
            'profile'   =>$filename,
            'email'     =>$request->email,
            'password'  =>Hash::make($request->password),
        ]);
        return response()->json([
            'message'   => "Create Success",
            'result'    => $item,
            'status'    =>true,
            'modal'     =>true,
        ]); 
    }

    public function edit($id)
    {
        $item   = User::findOrFail($id);
        $form="";
        $form ='
        <div class="vr-popup-add-new">
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">Edit User</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <form class="form-card form_submit" action="'.route('user.update',$id).'" method="POST" enctype="multipart/form-data">
                '.csrf_field().'
                <input type="hidden" value="PUT" name="_method">
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Name<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" value="'.$item->name.'" name="name" placeholder="Enter your name" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Email<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" value="'.$item->email.'" name="email" placeholder="Enter your email" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Password<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" value="" name="password" placeholder="Enter your password" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Position<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" value="'.$item->position.'" name="position" placeholder="Enter your position" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Image<span class="text-danger"> *</span></label> 
                            <input type="file" name="profile" value="">
                            <input type="hidden" name="profile_hidden" value="'.$item->profile.'">
                        </div>
                    </div>
                    <div class="vr-btn-addnew">
                         <button type="submit" class="btn-block btn-primary">Update</button>
                    </div>
                </form>
            </div>
        </div>
        ';
        return response()->json([
            'result'=> $form,
            'status'=>true,
        ]); 
    }

    public function update(Request $request, $id)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'position' => 'required',
            'email' => 'required',
        ]);
        if ($validate->fails())
        {return response()->json($validate->errors()); }
        if($request->hasfile('profile'))
        {
            try {
                $file = $request->file('profile');
                $extenstion = $file->getClientOriginalExtension();
                $filename = rand(1,9999).'.'.$extenstion;
                $file->move(public_path('storage/users'), $filename);
              } catch (\Exception $e) {
                  return $e->getMessage();
              }
        }else{
            $filename = $request->profile_hidden;
        }

        User::where('id',$id)->update([
            'name'      =>$request->name,
            'position'  => $request->position,
            'profile'   =>$filename,
            'email'     =>$request->email,
            'password'  =>Hash::make($request->password),
        ]);
        return response()->json([
            'message'=> "Update Success",
            'status'=>true,
            'modal'=>true,
        ]); 

    }


    public function show($id)
    {
        $item   = User::findOrFail($id);
        $form="";
        $form ='
        <div class="vr-popup-view">
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">View User #'.$item->id.'</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <div class="vr-body-popup">
                    <div>
                        <p class="vr-body-popup-label">Name :</p>
                        <p>'.$item->name.'</p>
                    </div>
                     <div>
                        <p class="vr-body-popup-label">Email :</p>
                        <p>'.$item->email.'</p>
                    </div>
                     <div>
                        <p class="vr-body-popup-label">Position :</p>
                        <p>'.$item->position.'</p>
                    </div>
                     <div>
                        <p class="vr-body-popup-label">Profile :</p>
                        <p>'.$item->profile.'</p>
                    </div>
                </div>
            </div>
        </div>
        ';
        return response()->json([
            'result'=> $form,
            'status'=>true,
        ]); 
    }

}
