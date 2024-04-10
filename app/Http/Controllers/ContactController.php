<?php

namespace App\Http\Controllers;
use Illuminate\Support\Carbon;
use Illuminate\Routing\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    public function index(Request $request){
        $query = Contact::query();
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
        return view('contacts.index',compact(['items','dateFilter','search']));
        
    }

    public function show($id)
    {
        $item   = Contact::findOrFail($id);
        $form="";
        $form ='
        <div class="vr-popup-view" style="width:1000px;">
            <div class="card">
                <div class="vr-header-popup">
                    <h5 class="text-center">View Contact #'.$item->id.'</h5>
                    <span class="vr_remove_popup vr-remove-popup"><i class="fas fa-window-close"></i></span>
                </div>
                <div class="vr-body-popup">
                     <div>
                        <p class="vr-body-popup-label">Email :</p>
                        <p>'.$item->email.'</p>
                    </div>
                    <div>
                        <p class="vr-body-popup-label">Name :</p>
                        <p>'.$item->name.'</p>
                    </div>
                     <div>
                        <p class="vr-body-popup-label">Message:</p>
                        <p>'.$item->message.'</p>
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
