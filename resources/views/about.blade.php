@extends('layouts.master')
@section('title', 'About')


@section('content')
<div class="container mx-auto">
  <h1 class="my-5 text-center">About Scale Garage 24</h1>

  <div class="about my-5 mx-auto about-img"></div>

    <div class=" mx-auto border rounded p-2 text-center container">
      <p>Scale Garage 24 is a dedicated platform for the art and craft of scale model building. We believe that every model tells a story, and every builder deserves a place to share their passion. Our mission is to connect enthousiasts from around the world, creating a vibrant and supportive community where creativity thrives.
      </p>
    </div>

    <h2 class="text-center my-5">Our Values</h2>

<div class="container my-5">
  <div class="row text-center g-4 justify-content-center">

    <div class="col-md-4">
      <div class="border rounded p-4 h-100">
        <h3 class="mb-3">Craftsmanship</h3>
        <p>We celebrate the skill, patience, and attention to detail that goes into every build.</p>
      </div>
    </div>

    <div class="col-md-4">
      <div class="border rounded p-4 h-100">
        <h3 class="mb-3">Community</h3>
        <p>We foster a friendly and encouraging environment for builders of all skill levels.</p>
      </div>
    </div>

    <div class="col-md-4">
      <div class="border rounded p-4 h-100">
        <h3 class="mb-3">Inspiration</h3>
        <p>We aim to be a source of inspiration, helping builders learn new techniques and try new ideas.</p>
      </div>
    </div>

  </div>
</div>

@endsection