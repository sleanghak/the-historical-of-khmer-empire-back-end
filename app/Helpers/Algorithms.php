<?php
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
    
    if (! function_exists('getStatus')) {
        function  getStatus($value){
            return $value=="1"?"Active":"Inactive";
        }
    }

    
    if (! function_exists('getUserName')) {
        function  getUserName($id){
            try{
                return \DB::table("users")->find($id,['name']);
            }catch( Exception $e){
            }
        }
    }

    if (! function_exists('getUser')) {
        function  getUser($id){
            return \DB::table("users")->find($id);
        }
    }

    if (! function_exists('getMediaPhoto')) {
        function  getMediaPhoto($thumbnail){
            return asset('storage/medias/'.$thumbnail.".jpg");
        }
    }

    if (! function_exists('getPhoto')) {
        function  getPhoto($folder,$profile){
            return asset('storage/'.$folder.'/'.$profile);
        }
    }

    if (! function_exists('getSite')) {
        function  getSite(){
            $item   = \DB::table("site_configs")->first();
            $medias = \DB::table("media")->where('user_id',1)->get();
            foreach ($medias as $m){
                $m->thumbnail= getMediaPhoto($m->thumbnail);
            }
            $item->header_logo= getPhoto("sites",$item->header_logo);
            $item->footer_logo= getPhoto("sites",$item->footer_logo);
            $item->media =$medias;
            return $item;
        }
    }
    

    
?>