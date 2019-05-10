<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Alexandra Travel</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <style>
        html, body {
                background-color: #c9df8a;
                color:  #234d20;
                
            }
    </style>
    
</head>
<body>
    <div id="app">
     <nav class="navbar navbar-expand-md navbar-light navbar-laravel " style="background-color:#7bc043"> 
        
  
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                Alexandra Travel
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        
                        <li class="nav-item active">
        <a class="nav-link" href="{{ route('blogs_path')}}">Home <span class="sr-only">(current)</span></a>
      </li>
      @guest
                        
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                                
                            @endif
                            
      
                        @else
                        <li class="nav-item">
        <a href="{{ route('create_blog_path')}}" class="nav-link">Create new Travel</a>
                         </li>
      
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                            
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

<nav aria-label="breadcrumb" >
  <ol class="breadcrumb" style="background-color:#36802d">
    <li class="breadcrumb-item" ><a href="/blogs"  style="color:  #fdf498">Home</a></li>
    <li class="breadcrumb-item" aria-current="page"><a href="{{ route('create_blog_path')}}"  style="color:  #fdf498">Create new Travel</a></li>
  </ol>
</nav>
        
        <div class="container">
    @yield('content')
    </div>
    </div>
</body>
</html>