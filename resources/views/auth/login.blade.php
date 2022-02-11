@extends('layouts.app')

@section('content')
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="{{asset('la/dist/app.css')}}">
  <!-- <title>Document</title> -->
</head>
<body>
  <div id="app">
    
    <div class="container">
      <div class="row justify-content-md-center">
        <div class="col col-lg-5 mt-5">
          <div class="text-center">
            <h4 class="font-weight-bold">Sign In</h4>
            <p><strong>Welcome!</strong> Go sign in to access administrator page.</p>
          </div>
          <div class="card border-0 shadow-sm rounded-lg mt-3">
            <div class="card-body p-5">
            <form method="POST" action="{{ route('login') }}">
                        @csrf
                <div class="form-group">
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text bg-white border-right-0" id="basic-addon1">
                        <i class="fas fa-envelope"></i>
                      </span>
                    </div>
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror 
                  </div>
                </div>
  
                <div class="form-group">
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text bg-white border-right-0" id="basic-addon1"><i class="fas fa-lock"></i></span>
                    </div>
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                  </div>
                </div>
  
                <div class="form-group">
               <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                <label class="form-check-label" for="remember">
                    {{ __('Remember Me') }}
                </label>
                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                </div>
  
                <div class="form-group">
                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>
                                @if (Route::has('register'))
                                <button type="submit" class="btn btn-dark">
                                <a href="{{ route('register') }}">{{ __('Register') }}</a>
                                </button>
                                @endif 
                </div>
               
              </form>
            </div>
          </div>

          <div class="text-center mt-5">
            <!-- <a href="">&larr;</a> -->
          </div>
        </div>
      </div>
    </div>

  </div>
  <script src="{{asset('la/dist/app.js')}}"></script>
</body>
</html>

                        
@endsection

