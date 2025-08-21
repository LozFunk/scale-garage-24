@extends('layouts.master')
@section('title', 'Scale Garage 24')

@section('header')
  @includeif('header')
@endsection

@section('content')

<div class="bg-dark p-1">
  <div class="container my-5 text-center text-light">
      <h2 class="fw-bold mb-4">Welcome to Scale Garage 24</h2>
      <p class="lead">
          Whether you're a veteran builder or just starting out, Scale Garage 24 is your home for sharing, discovering, and discussing incredible scale model cars. From precise replicas to creative customs, we celebrate craftsmanship in all forms.
      </p>
  </div>
</div>


<h2 class="text-center my-5 py-5">Why Join Us?</h2>

<div class="container d-flex gap-5 text-center mb-5">
  
  <div class="col">
    <h3>Share Your Work</h3>
    <p>Easily upload photos and descriptions of your latest builds and get feedback from the community.</p>
  </div>

  <div class="col">
    <h3>Get Inspired</h3>
    <p>Browse a diverse feed of models from all eras and styles, from classic muscle to modern supercars.</p>
  </div>

  <div class="col">
    <h3>Connect with Builders</h3>
    <p>Comment, Discuss techniques, and connect with fellow hobbyists who share your passion.</p>
  </div>

</div>
<div class="bg-dark p-1">
  <div class="container text-center my-5 text-white">
      <h3 class="fw-bold mb-3">Ready to Showcase Your Work?</h3>
      <p class="mb-4">Join the growing community of model builders from around the world. Upload your builds, connect, and be inspired.</p>
      <a href="{{ url('upload') }}" class="btn btn-outline-danger btn-lg">
          Post Your First Model <i class="bi bi-upload ms-1"></i>
      </a>
  </div>
</div>
@endsection