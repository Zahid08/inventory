<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'detail' , 'category_id','price','quantity'
    ];

    /**
     * User
     *
     * Get User Uploaded By Product
     *
     * @return object
     */
    public function user(): object
    {
        return $this->belongsTo(User::class)->select('id', 'name', 'email');
    }

    /**
     * Category
     *
     * Get User Uploaded By Product
     *
     * @return object
     */
    public function category(): object
    {
        return $this->belongsTo(Category::class)->select('id', 'name');
    }
}
