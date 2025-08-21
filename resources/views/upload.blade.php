@extends('layouts.master')
@section('title', 'Profile')


@section('content')
<div class="container mb-5">
<div class="text-center my-5">
    <h2>Share Your Creation</h2>
    <p class="my-5">Fill out the details Below to add your model to the showcase.</p>
</div>

<form class="border rounded p-5 col-md-6 offset-md-3" method="POST" action="{{ route('car-models.store') }}" enctype="multipart/form-data">
    @csrf

    <h4 class="mb-5">New Post Details</h4>
    <div class="mb-5">
        <label for="title" class="form-label fw-bold">Model Title</label>
        <input type="text" class="form-control fw-light" id="title" name="title" placeholder="e.g. Tamiya Porsche 911 GT3" required>
    </div>

    <div class="mb-5">
        <label for="description" class="form-label fw-bold">Description</label>
        <textarea id="description" class="form-control fw-light" name="description" rows="5" placeholder="Tell us about your model, challenges, techniques used..."></textarea>
    </div>

    <div class="mb-4">
    <label class="form-label fw-bold">Upload Images</label>
    <input type="file" class="form-control" name="images[]" multiple>
</div>

    <div class="d-flex justify-content-end">
        <button class="btn btn-dark my-5 w-100" type="submit"><i class="bi bi-upload"></i> Post Creation</button>
    </div>
    
</form>
</div>


@endsection