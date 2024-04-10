<?php
namespace App\Helpers;
use Illuminate\Support\Facades\DB;
class Helper
{
    public static $MEDIAS = array(
        1   => "facebook",
        2   => "linkin",
        3   => "instagram",
        4   => "telegram",
    );

    public static function getUserName($id)
    {
        return \DB::table("users")->find($id);
    }

    public static function formatDate($date)
    {
        return date('Y-m-d', strtotime($date));
    }

    // Add more helper methods as needed
}

?>