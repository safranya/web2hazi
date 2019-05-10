<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Blog;
use Storage;

class BlogsController extends Controller
{
    //
    public function index(){

        $blogs= Blog::all();

        return view('blogs.index', ['blogs' =>$blogs]);
    }

    public function show($id){


        $blog=Blog::find($id);

        $user = \App\User::where('utazasid', $id)->count('id');
        
        return view('blogs.show', compact('blog'), ['user' => $user]);
    

    }

    public function edit($id){

        $blog=Blog::find($id);

        return view('blogs.edit', ['blog'=> $blog]);


    }

    public function update(Request $request, $id){

        $blog=Blog::find($id);

        $blog->title=$request->title;
        $blog->content =$request->content;

        $blog->update();

        return redirect()->route('blog_path', ['blog => $blog']);

    }

    public function destroy($id){

        $blog=Blog::find($id);

        $blog->delete();

        return redirect()->route('blogs_path');

    }

    public function create(){

        return view('blogs.create');
    }

    public function store(Request $request){

        $blog= new Blog;

       
        $blog->title= $request->title;
        $blog->content= $request->content;
        $blog->content2= $request->content2;
        $blog->max=$request->get('max');
        $blog->kezdet=$request->get('kezdet');
        $blog->veg=$request->get('veg');


        $blog->save();

        return redirect()->route('blogs_path');
    }

    public function saveTravel($id)
    {
        $travel =Blog::findOrFail($id);
        $user = Auth::user();

        $user['utazasid'] = $travel->id;
        $user->save();
        session()->flash('success', 'Successfully joined for the journey');
        return back();
        
        
        
    }

    public function resignTravel($id)
    {
        $user = Auth::user();

        $user['utazasid'] = 0;
        $user->save();
        session()->flash('cancel', 'You canceled the trip');
        return back();
        
        
    }

}

