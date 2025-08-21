@section('header')


<div class="bg-dark text-white px-4 py-5 text-center hero">
    <div class="py-5">
        <h1 class="display-5 fw-bold text-white">The Ultimate Model Car Showcase </h1>
        <div class="col-lg-6 mx-auto">
            <p class="fs-5 mb-4">A community for passionate scale model enthisasts to share, discuss, and admire incredible creations.</p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                <a class="btn btn-danger fs-5" href="{{ route('car-models.index') }}">Explore Showroom <i class="bi bi-arrow-right"></i></a>
            </div>
        </div>
    </div>
</div>

@endsection