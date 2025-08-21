<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CarModel;
use App\Models\Comment;

class CommentController extends Controller
{
    public function store(Request $request, CarModel $carModel)
    {
        $request->validate([
            'body' => 'required|string|max:1000',
        ]);

        $carModel->comments()->create([
            'user_id' => auth()->id(),
            'body' => $request->body,
        ]);

        return redirect()->back()->with('success', 'Comment added!');
    }

    public function edit(Comment $comment)
    {
        if (auth()->id() !== $comment->user_id) {
            abort(403);
        }

    return view('showroom.edit', compact('comment'));
    }

    public function update(Request $request, Comment $comment)
    {
        if (auth()->id() !== $comment->user_id) {
            abort(403);
        }

        $request->validate([
            'body' => 'required|string|max:1000',
        ]);

        $comment->body = $request->body;
        $comment->save();

    return redirect()->route('car-models.show', $comment->car_model_id)
                     ->with('success', 'Comment updated successfully.');
    }

    public function destroy(Comment $comment)
    {
        if (auth()->id() !== $comment->user_id) {
            abort(403);
        }

        $comment->delete();

        return redirect()->route('car-models.show', $comment->car_model_id)
                     ->with('success', 'Comment deleted.');
    }


}
