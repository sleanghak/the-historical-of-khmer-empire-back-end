<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Media;
use App\Models\Art;
use App\Models\Civilization;
use App\Models\History;

class HomeController extends Controller
{
    function index(){
        $item=[];
        $history = History::orderby('id','asc')->first();
        $civil = Civilization::orderby('id','asc')->first();
        $art = Art::orderby('id','asc')->first();
        $history->thumbnail = getPhoto("histories",$history->thumbnail);
        $civil->thumbnail = getPhoto("civilizations",$civil->thumbnail);
        $art->thumbnail = getPhoto("arts",$art->thumbnail);

        $history->created_by = getUserName($history->created_by)->name;
        $civil->created_by = getUserName($civil->created_by)->name;
        $art->created_by = getUserName($art->created_by)->name;

        $item[0]= $history;
        $item[1]= $art;
        $item[2]= $civil;

        $ArraysItem['items'] = $item;
        $ArraysItem['sites'] = getSite();

        return response()->json([
            'result'=> $ArraysItem,
            'status'=>true,
        ]);
    }
}
