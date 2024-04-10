<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Civilization;

class CivilizationController extends Controller
{
    function index(){
        $civil = Civilization::orderby('id','asc')->paginate(10);
        foreach($civil as $his){
            $his->thumbnail = getPhoto("civilizations",$his->thumbnail);
            $his->created_by = getUserName($his->created_by)->name;
        }
        $ArraysItem['items'] = $civil;
        // $ArraysItem['sites'] = getSite();

        return response()->json([
            'result'=> $ArraysItem,
            'status'=>true,
        ]);
    }
}
