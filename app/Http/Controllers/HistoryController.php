<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\History;
use Illuminate\Support\Carbon;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Routing\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
class HistoryController extends Controller
{
    public function index(Request $request){
        $query = History::query();
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
        $items = $query->where('title', 'LIKE', '%'. $search .'%')->orderBy('created_at', 'desc')->paginate(10);
        return view('histories.index',compact(['items','dateFilter','search']));
    }

    public function create()
    {
        $form="";
        $form ='
        <div class="vr-popup-add-new" style="width:1000px;">
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">Add History</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <form class="form-card form_submit" action="/dashboard/history" method="post" enctype="multipart/form-data">
                '.csrf_field().'
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Title<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" name="title" placeholder="Enter your title" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Thumbnail<span class="text-danger"> *</span></label> 
                            <input type="file" name="thumbnail">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Description<span class="text-danger"> *</span></label> 
                            <textarea name="description" rows="8" cols="50" placeholder="Enter your description"></textarea>
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
            'title'         => 'required',
            'description'   => 'required',
            'thumbnail'     => 'required',
        ]);
        if ($validate->fails())
        {return response()->json($validate->errors()); }

        if($request->hasfile('thumbnail'))
        {
            try {
                $file = $request->file('thumbnail');
                $extenstion = $file->getClientOriginalExtension();
                $filename = rand(1,9999).'.'.$extenstion;
                $file->move(public_path('storage/histories'), $filename);
              } catch (\Exception $e) {
                  return $e->getMessage();
              }
        }

        $item = History::create([
            'thumbnail'     =>$filename,
            'description'   =>$request->description,
            'title'         =>$request->title,
            'created_by'    =>Auth::user()->id,
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
        $item   = History::findOrFail($id);

        $form="";
        $form ='
        <div class="vr-popup-add-new" style="width:1000px;" >
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">Edit History</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <form class="form-card form_submit" action="'.route('history.update',$id).'" method="POST" enctype="multipart/form-data">
                '.csrf_field().'
                <input type="hidden" value="PUT" name="_method">
                    <div class="row justify-content-between text-left">
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Title<span class="text-danger"> *</span></label> 
                            <input type="text" id="fname" name="title" value="'.$item->title.'" placeholder="Enter your title" onblur="validate(1)">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Thumbnail<span class="text-danger"> *</span></label> 
                            <input type="file" name="thumbnail">
                            <input type="hidden" name="thumbnail_hidden" value="'.$item->thumbnail.'">
                        </div>
                        <div class="form-group col-sm-12 flex-column d-flex"> 
                            <label class="form-control-label ">Description<span class="text-danger"> *</span></label> 
                            <textarea name="description" rows="8" cols="50" placeholder="Enter your description">'.$item->description.'</textarea>
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
            'title'         => 'required',
            'description'   => 'required',
            'thumbnail'     => 'required',
        ]);
        if ($validate->fails())
        {return response()->json($validate->errors()); }

        if($request->hasfile('thumbnail'))
        {
            try {
                $file = $request->file('thumbnail');
                $extenstion = $file->getClientOriginalExtension();
                $filename = rand(1,9999).'.'.$extenstion;
                $file->move(public_path('storage/histories'), $filename);
              } catch (\Exception $e) {
                  return $e->getMessage();
              }
        }else{
            $filename = $request->thumbnail_hidden;
        }

        History::where('id',$id)->update([
            'thumbnail'     =>$filename,
            'description'   =>$request->description,
            'title'         =>$request->title,
        ]);
        return response()->json([
            'message'=> "Update Success",
            'status'=>true,
            'modal'=>true,
        ]); 

    }

    public function show($id)
    {
        $item   = History::findOrFail($id);
        $form="";
        $form ='
        <div class="vr-popup-view" style="width:1000px;">
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">View History #'.$item->id.'</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <div class="vr-body-popup">
                    <div>
                        <p class="vr-body-popup-label">Thumbnail :</p>
                        <div class="vr-body-image">
                            <img src="'. getPhoto("histories",$item->thumbnail) .'" alt="">
                        </div>
                    </div>
                     <div>
                        <p class="vr-body-popup-label">Title :</p>
                        <p>'.$item->title.'</p>
                    </div>
                    <div>
                        <p class="vr-body-popup-label">User Name :</p>
                        <p>'.getUserName($item->created_by)->name.'</p>
                    </div>
                     <div>
                        <p class="vr-body-popup-label">Description:</p>
                        <p>'.$item->description.'</p>
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
