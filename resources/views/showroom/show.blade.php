@extends('layouts.master')
@section('title', $carModel->title)

@section('content')

@if(session('success'))
    <div class="alert alert-success mt-3 mb-0">
        {{ session('success') }}
    </div>
@endif
<div class="container">
    <a href="{{ route('car-models.index') }}" class="btn btn-dark btn-sm my-3"><i class="bi bi-arrow-left"></i> Back to
        Showroom</a>
    <div class="card mb-3">
        <div class="card-body">
            <h3>{{ $carModel->title }}</h3>
            <p class="card-text text-muted">Uploaded by <b>{{ $carModel->user->name ?? 'Unkown'}}</b></p>

            @if($carModel->images->count())
                <div class="row">
                    @foreach($carModel->images as $image)
                        <div class="col-md-4 mb-3">
                            <img src="{{ asset('storage/' . $image->image_path) }}" class="img-fluid rounded">
                        </div>
                    @endforeach
                </div>
            @else
                <p><em>No images available.</em></p>
            @endif

            <p>{{ $carModel->description }}</p>


            <h5>Comments</h5>
            @foreach($carModel->comments as $comment)
    <div class="mb-2 position-relative">
        <strong>{{ optional($comment->user)->name ?? 'Deleted user' }}</strong>
        <small class="text-muted">{{ $comment->created_at->diffForHumans() }}</small>
        <p>{{ $comment->body }}</p>

        @auth
            @if(auth()->id() === $comment->user_id)
                <div class="position-absolute top-0 end-0 d-flex gap-2 align-items-end">
                
                    <a href="{{ route('comments.edit', $comment->id) }}" class="text-primary" title="Edit comment">
                        <i class="bi bi-pencil-square"></i>
                    </a>

                    
                    <form action="{{ route('comments.destroy', $comment->id) }}" method="POST" onsubmit="return confirm('Delete this comment?')">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-link p-0 m-0 text-danger" title="Delete comment">
                            <i class="bi bi-trash3-fill"></i>
                        </button>
                    </form>
                </div>
            @endif
        @endauth
    </div>
@endforeach

            @auth
                <form action="{{ route('comments.store', $carModel->id) }}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <textarea name="body" rows="3" class="form-control" placeholder="Add your comment..."
                            required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary btn-sm">Post Comment</button>
                </form>
            @else
                <p><a href="{{ route('login') }}">Log in</a> to leave a comment.</p>
            @endauth

        </div>
    </div>
</div>
@endsection