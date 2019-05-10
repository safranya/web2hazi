@extends('layouts.app')

 @section('content')
<form action="{{ route('store_blog_path')}}" method="POST" enctype="multipart/form-data">

{{csrf_field()}}

<div class="form-group">
    <label for="title">Travel destination</label>
    <input type="text" name="title" class="form-control">
</div>

<div class="form-group">
    <label for="content">Short description</label>
    <textarea name="content"  rows="2" class="form-control"></textarea>
</div>

<div class="form-group">
    <label for="content2">Description</label>
    <textarea name="content2"  rows="10" class="form-control"></textarea>
</div>

<div class="form-group">
    <label for="max">Max</label>
    <input type="text" name="max" class="form-control">
</div>

<div class="form-group">
    <label for="kezdet">Start</label>
    <input type="date" name="kezdet" class="form-control">
</div>

<div class="form-group">
    <label for="veg">End</label>
    <input type="date" name="veg" class="form-control">
</div>



<div class="form-group">
    <button type="submit" class="btn btn-outline-primary">Create new Travel</button>

</div>
</form>

@endsection