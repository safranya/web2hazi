@extends('layouts.app')

@section('content')

<div class="row">

    <div class="col-md-12">
        
        
        
        <br><br>
        <h3>{{ $blog->title }}</h3>
        <hr>
        <p class="lead">

            {{ $blog->content }}
            <hr>
            {{ $blog->content2 }}
            <hr>
            Férőhely: {{$blog->max}} /{{$user}} <br>
            Start:{{ $blog->kezdet }} <br>
            End: {{ $blog->veg}}
        </p>
        <br>

        

        @include('layouts._message')
        @if(Auth::user() != NULL)
        @if($blog->id != Auth::user()->utazasid)
            @if($user < $blog->max)
                <form method="POST" action="/travelSave/{{ $blog->id }}">
                    {{ csrf_field() }}
                    <div class="form-group row mb-0">
                        <div class="col-md-6 ">
                          <button type="submit" class="btn btn-dark">
                                Apply
                            </button>
                        </div>
                    </div>
                </form>
            @else
                <div class="alert alert-warning" role="alert">
                    It's full!
                </div>
            @endif
        @else
            <form method="POST" action="/travelResign/{{ $blog->id }}">
                {{ csrf_field() }}
                <div class="form-group row mb-0">
                    <div class="col-md-6 ">
                        <button type="submit" class="btn btn-secondary">
                            Cancel
                        </button>
                    </div>
                </div>
            </form>
        @endif
    @else
        <div class="alert alert-warning" role="alert">
            Please <a href="{{ route('login') }}">sign in</a> or <a href="{{ route('register') }}">registrate</a>!
        </div>
    @endif
       
    </div>

    

</div>


@endsection