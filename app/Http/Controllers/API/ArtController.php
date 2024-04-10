<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Art;

class ArtController extends Controller
{
    function index(){
        $art = Art::orderby('id','asc')->paginate(10);
        foreach($art as $his){
            $his->thumbnail = getPhoto("arts",$his->thumbnail);
            $his->created_by = getUserName($his->created_by)->name;
        }
        $ArraysItem['items'] = $art;
        // $ArraysItem['sites'] = getSite();

        return response()->json([
            'result'=> $ArraysItem,
            'status'=>true,
        ]);
    }
}
