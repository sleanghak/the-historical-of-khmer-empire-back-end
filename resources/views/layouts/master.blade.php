<!DOCTYPE html>
<html lang="en">
    <head>
        {{-- <title>App Name - @yield('title')</title> --}}
        <title>The Historical of Khmer Empire</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="turbolinks-root" content="/app">
        <meta name="csrf-token" content="{{ csrf_token() }}" />
        @include('layouts.styles')
    </head>
    <body>
        <div class="masterContent" id="masterContent">
            <aside class="mainSidebar" id="mainSidebar">
                @include('layouts.sidebar')
            </aside>
            <div class="webContent">
                <div class="mainNavbar">
                    @include('layouts.navbar')
                </div>
                <div class="mainContent">
                    @yield('content')
                </div>
            </div>
        </div>
        @include('layouts.scripts')
    </body>
</html>