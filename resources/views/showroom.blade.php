@extends('layouts.master')
@section('title', 'Showroom')

@section('content')

@if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif

@foreach($carModels as $model)
    <div class="card mb-3">
        <img src="{{ asset('storage/' . $model->image_path) }}" class="card-img-top" alt="{{ $model->title }}">
        <div class="card-body">
            <h5 class="card-title">{{ $model->title }}</h5>
            <p class="card-text">{{ $model->description }}</p>       
            <div class="d-flex justify-content-between text-muted">
                <div>
                    Uploaded by {{ $model->user->name }}
                </div>
                <div>
                    {{ $model->created_at->diffForHumans() }}

                </div>
            </div>
        </div>
    </div>
@endforeach

@endsection