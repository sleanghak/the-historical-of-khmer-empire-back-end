<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SiteConfig;
use Illuminate\Support\Carbon;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Routing\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
class SiteConfigController extends Controller
{
    public function index(Request $request){
        $item = SiteConfig::first();
        return view('sites.index',compact(['item']));
    }
    public function siteUpdate(Request $request)
    {
        if($request->hasfile('header_logo'))
        {
            try {
                $file = $request->file('header_logo');
                $extenstion = $file->getClientOriginalExtension();
                $header_logo = "header_logo_".rand(1,9999).'.'.$extenstion;
                $file->move(public_path('storage/sites'), $header_logo);
              } catch (\Exception $e) {
                  return $e->getMessage();
              }
        }else{
            $header_logo = $request->header_logo_hidden;
        }

        if($request->hasfile('footer_logo'))
        {
            try {
                $file = $request->file('footer_logo');
                $extenstion = $file->getClientOriginalExtension();
                $footer_logo = "footer_logo_".rand(1,9999).'.'.$extenstion;
                $file->move(public_path('storage/sites'), $footer_logo);
              } catch (\Exception $e) {
                  return $e->getMessage();
              }
        }else{
            $footer_logo = $request->footer_logo_hidden;
        }
        $check = SiteConfig::first();
        if($check){
            $validate = Validator::make($request->all(), [
                'header_logo_hidden'   => 'required',
                'footer_logo_hidden'   => 'required',
                'phone_number'  => 'required',
                'email'         => 'required',
                'address'       => 'required',
                'telegram'       => 'required',
            ]);
            if ($validate->fails())
            {return response()->json($validate->errors()); }

            $item = SiteConfig::where('id',$check->id)->update([
                'header_logo'   => $header_logo,
                'footer_logo'   => $footer_logo,
                'phone_number'  => $request->phone_number,
                'email'         => $request->email,
                'address'       => $request->address,
                'telegram'      => $request->telegram,
            ]);
        }else{
            $validate = Validator::make($request->all(), [
                'header_logo'   => 'required',
                'footer_logo'   => 'required',
                'phone_number'  => 'required',
                'email'         => 'required',
                'address'       => 'required',
                'telegram'       => 'required',
            ]);
            if ($validate->fails())
            {return response()->json($validate->errors()); }

            $item = SiteConfig::create([
                'header_logo'   => $header_logo,
                'footer_logo'   => $footer_logo,
                'phone_number'  => $request->phone_number,
                'email'         => $request->email,
                'address'       => $request->address,
                'telegram'      => $request->telegram,
            ]);
        }
        return response()->json([
            'message'   => "Success",
            'result'    => $item,
            'status'    =>true,
            'modal'     =>true,
        ]);
    }
}
