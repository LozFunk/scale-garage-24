<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CarModelController;
use App\Http\Controllers\CommentController;
use Illuminate\Support\Facades\Route;



Route::resource('car-models', CarModelController::class);

Route::resource('comments', CommentController::class)->only(['edit', 'update', 'destroy']);


Route::get('/', function () {
    return view('home');
});

Route::get('about', function () {
    return view('about');
});


Route::get('upload', function () {
    return view('upload');
});

Route::get('login',function(){
    return view('login');
});

Route::get('register',function(){
    return view('register');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::post('car-models/{carModel}/comments', [CommentController::class, 'store'])->name('comments.store');
});

Route::get('/db-info', function () {
    return [
        'db' => \DB::connection()->getDatabaseName(),
        'host' => \DB::connection()->getConfig('host'),
        'user' => \DB::connection()->getConfig('username'),
    ];
});

require __DIR__.'/auth.php';
