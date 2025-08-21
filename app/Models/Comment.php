<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $fillable = ['car_model_id', 'user_id', 'body'];

    public function carModel()
    {
        return $this->belongsTo(CarModel::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
