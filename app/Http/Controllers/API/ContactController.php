<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
class ContactController extends Controller
{
    function create(Request $request){
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'message' => 'required',
            'email' => 'required',
        ]);
        if ($validate->fails())
        {return response()->json($validate->errors()); }
        $item = Contact::create([
            'name'      =>$request->name,
            'message'  => $request->message,
            'email'     =>$request->email,
        ]);
        return response()->json([
            'message'   => "Create Success",
            'result'    => $item,
            'status'    =>true,
        ]); 
    }
}
