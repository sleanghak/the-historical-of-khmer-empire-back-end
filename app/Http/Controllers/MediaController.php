<?php

namespace App\Http\Controllers;
use App\Helpers\Helper;
use App\Models\Media;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MediaController extends Controller
{
    public function index(Request $request){
        $items = Media::orderBy('created_at', 'desc')->get();
        return view('medias.index',compact(['items']));
    }

    public function create()
    {
        $users = User::get();
        $str='';
        $str.= '<select name="user_id" >';
        foreach ($users as $user){
            $str.='<option value="'.$user->id.'">'.$user->name.'</option>';
        }
        $str.='</select>';

        $media='';
        $media.= '<select name="thumbnail" >';

        foreach (Helper::$MEDIAS as $index=>&$item){
            $media.='<option value="'.$item.'">'.ucfirst($item).'</option>';
        }
        $media.='</select>';

        $form="";
        $form ='
        <div class="vr-popup-add-new">
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">Add Media</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <form class="form-card form_submit" action="/dashboard/media" method="post" enctype="multipart/form-data">
                '.csrf_field().'
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-12 flex-column d-flex">
                            <label class="form-control-label ">Link<span class="text-danger"> *</span></label>
                            <input type="text" id="fname" name="link" placeholder="Enter your link" onblur="validate(1)">
                        </div>
                        <div class="form-group col- sm-12 flex-column d-flex">
                            <label class="form-control-label ">Choose a Media:<span class="text-danger"> *</span></label>
                            '.$media.'
                        </div>
                        <div class="form-group col- sm-12 flex-column d-flex">
                            <label class="form-control-label ">Choose a User:<span class="text-danger"> *</span></label>
                            '.$str.'
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
            'link' => 'required',
            'user_id' => 'required',
            'thumbnail' => 'required',
        ]);
        if ($validate->fails())
        {return response()->json($validate->errors()); }
        $item = Media::create([
            'thumbnail'      =>$request->thumbnail,
            'user_id'     =>$request->user_id,
            'link'     =>$request->link,
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
        $item   = Media::findOrFail($id);
        $users = User::get();

        $str='';
        $str.= '<select name="user_id" >';
        foreach ($users as $user){
            $check = $user->id == $item->user_id?"selected":"";
            $str.='<option '.$check.' value="'.$user->id.'">'.$user->name.'</option>';
        }
        $str.='</select>';

        $media='';
        $media.= '<select name="thumbnail" >';

        foreach (Helper::$MEDIAS as $m){
            $check = $m == $item->thumbnail?"selected":"";
            $media.='<option '.$check.' value="'.$m.'">'.ucfirst($m).'</option>';
        }
        $media.='</select>';

        $form="";
        $form ='
        <div class="vr-popup-add-new" >
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">Edit Media</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <form class="form-card form_submit" action="'.route('media.update',$id).'" method="POST" enctype="multipart/form-data">
                '.csrf_field().'
                <input type="hidden" value="PUT" name="_method">
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-12 flex-column d-flex">
                            <label class="form-control-label ">Link<span class="text-danger"> *</span></label>
                            <input type="text" id="fname" name="link" value=" '.$item->link.'" placeholder="Enter your link" onblur="validate(1)">
                        </div>
                        <div class="form-group col- sm-12 flex-column d-flex">
                            <label class="form-control-label ">Choose a Media:<span class="text-danger"> *</span></label>
                            '.$media.'
                        </div>
                        <div class="form-group col- sm-12 flex-column d-flex">
                            <label class="form-control-label ">Choose a User:<span class="text-danger"> *</span></label>
                            '.$str.'
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
            'link' => 'required',
            'user_id' => 'required',
            'thumbnail' => 'required',
        ]);
        if ($validate->fails())
        {return response()->json($validate->errors()); }
        Media::where('id',$id)->update([
            'thumbnail'   =>$request->thumbnail,
            'user_id'     =>$request->user_id,
            'link'        =>$request->link,
        ]);
        return response()->json([
            'message'=> "Update Success",
            'status'=>true,
            'modal'=>true,
        ]);

    }


    public function show($id)
    {
        $item   = Media::findOrFail($id);
        $form="";
        $form ='
        <div class="vr-popup-view">
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">View Media #'.$item->id.'</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <div class="vr-body-popup">
                    <div>
                        <p class="vr-body-popup-label">Thumbnail :</p>
                        <div class="vr-body-image">
                            <img src="'. getMediaPhoto($item->thumbnail) .'" alt="">
                        </div>
                    </div>
                     <div>
                        <p class="vr-body-popup-label">User Name :</p>
                        <p>'.getUserName($item->id)->name.'</p>
                    </div>
                     <div>
                        <p class="vr-body-popup-label">Link :</p>
                        <p>'.$item->link.'</p>
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
