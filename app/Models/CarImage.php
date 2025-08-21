<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CarImage extends Model
{
    protected $fillable = ['car_model_id', 'image_path'];

    public function carModel()
    {
        return $this->belongsTo(CarModel::class);
    }
}
