@extends('layouts.master')

@section('title', 'Edit Comment')

@section('content')

    <div class="card my-5">
        <div class="card-body">
            <h5>Edit Your Comment</h5>

            <form action="{{ route('comments.update', $comment->id) }}" method="POST">
                @csrf
                @method('PUT')

                <div class="mb-3">
                    <textarea name="body" class="form-control" rows="3" required>{{ old('body', $comment->body) }}</textarea>
                    @error('body')
                        <div class="text-danger small">{{ $message }}</div>
                    @enderror
                </div>

                <button class="btn btn-success btn-sm">Update</button>
                <a href="{{ route('car-models.show', $comment->car_model_id) }}" class="btn btn-secondary btn-sm">Cancel</a>
            </form>
        </div>
    </div>
@endsection