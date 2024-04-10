<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\History;

class HistoryController extends Controller
{
    function index(){
        $history = History::orderby('id','asc')->paginate(10);
        foreach($history as $his){
            $his->thumbnail = getPhoto("histories",$his->thumbnail);
            $his->created_by = getUserName($his->created_by)->name;
        }
        $ArraysItem['items'] = $history;
        // $ArraysItem['sites'] = getSite();

        return response()->json([
            'result'=> $ArraysItem,
            'status'=>true,
        ]);
    }
}
