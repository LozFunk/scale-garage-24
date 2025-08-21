@extends('layouts.master')
@section('title', 'Showroom')

@section('content')

    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <div class="container row my-5 mx-auto">
        @foreach($carModels as $model)
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <a href="{{ route('car-models.show', $model) }}">
                        @if($model->images->count() > 0)
                            <img src="{{ asset('storage/' . $model->images->first()->image_path) }}" class="card-img-top"
                                alt="{{ $model->title }}" style="height: 400px; object-fit: cover; width: 100%;">
                        @else
                            <img src="{{ asset('storage/' . $model->image_path) }}" class="card-img-top" alt="{{ $model->title }}">
                        @endif
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">{{ $model->title }}</h5>

                        <p class="card-text text-muted">Uploaded by <b>{{ $model->user->name }}</b></p>
                        <p class="card-text">
                            <small class="text-muted">{{ $model->comments->count() }} comments</small>
                        </p>
                            <a href="{{ route('car-models.show', $model) }}" class="btn btn-primary btn-sm mt-2">View</a>
                            @auth
                            @if(auth()->id() === $model->user_id)
                                <form action="{{ route('car-models.destroy', $model->id) }}" method="POST"
                                    onsubmit="return confirm('Are you sure you want to delete this post?');" style="display:inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-sm btn-danger mt-2">Delete</button>
                                </form>
                            @endif
                            @endauth
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <div class="d-flex justify-content-center">
    {{ $carModels->links() }}
</div>

@endsection

            