<!DOCTYPE html>
<html>
<head>
    <title>App Name - @yield('title')</title>
    @include('partials.header')
</head>
<body>

    @include('partials.sidebar')
 
    <div class="container">
        @yield('content')
    </div>

    @include('partials.footer')
</body>
</html>
