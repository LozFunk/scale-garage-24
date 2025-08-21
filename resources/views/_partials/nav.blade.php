<nav class="navbar navbar-dark bg-dark navbar-expand-lg fs-5 px-4">
    <div class="container">
        <a class="navbar-brand pos-logo" href="{{ url('/') }}">
            <img src="{{ asset('images/logo.png') }}" alt="Scale Garage 24 logo">
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <div class="w-100 d-flex flex-column flex-lg-row justify-content-between align-items-start align-items-lg-center gap-3">

                
                <ul class="navbar-nav">
                    <li class="nav-item px-2">
                        <a class="nav-link {{ Request::is('/') ? 'active' : '' }}" href="{{ url('/') }}">Home</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link {{ Request::is('car-models') ? 'active' : '' }}" href="{{ route('car-models.index') }}">Showroom</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link {{ Request::is('about') ? 'active' : '' }}" href="{{ url('about') }}">About</a>
                    </li>                    
                    @auth
                    <li class="nav-item px-2">
                        <a class="nav-link {{ Request::is('upload') ? 'active' : '' }}" href="{{ url('upload') }}">Upload</a>
                    </li>
                    @endauth
                </ul>

                
                <ul class="navbar-nav">
                    @guest
                    <li class="nav-item mx-2">
                        <a class="btn btn-outline-danger {{ Request::is('login') ? 'active' : '' }}" href="{{ url('login') }}">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-danger {{ Request::is('register') ? 'active' : '' }}" href="{{ url('register') }}">Register</a>
                    </li>
                    @endguest

                    @auth
                    <li class="nav-item d-flex align-items-center me-4 text-secondary fs-6">
                        Hello, {{ Auth::user()->name }}
                    </li>

                    <li class="nav-item">
                        <form method="POST" action="{{ route('logout') }}" class="d-inline">
                            @csrf
                            <button type="submit" class="btn btn-outline-danger">
                                Logout
                            </button>
                        </form>
                    </li>
                    @endauth
                </ul>

            </div>
        </div>
    </div>
</nav>

@if(session('message'))
    <div class="alert alert-success m-0">
        {{ session('message') }}
    </div>
@endif

