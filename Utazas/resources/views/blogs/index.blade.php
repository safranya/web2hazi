@extends('layouts.app')

@section('content')
<div class="row">

        @foreach($blogs as $blog)


    <div class="col-md-6">
        <br>
        <br>
        <div class="card">

            <div class="card-header" style="background-color:#36802d" >
            <a href="{{route('blog_path', ['blog' => $blog->id])}}" style="color:#fdf498">{{$blog->title}} </a>        

            </div>

            <div class="card-body"  >
               <a href="{{ route('blog_path', ['blog'=>$blog->id])}}">
                
            </a>
                        <br>
                        
                    <p class="lead">
                    {{$blog->content}}
                             <br> <br>
                        posted  
                        
                        {{$blog->created_at}}
                         
                    </p>

                    <a href="{{ route('blog_path', ['blog'=> $blog->id])}}" class="btn btn-outline-success">View Travel</a>
                    

            </div>

        </div>

            


    </div>
    @endforeach 


</div>




@endsection