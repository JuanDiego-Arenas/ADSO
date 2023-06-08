<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Contacto
 *
 * @property $id
 * @property $nombres
 * @property $apellidos
 * @property $telefono
 * @property $correo
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Contacto extends Model
{
    
    static $rules = [
		'nombres' => 'required',
		'apellidos' => 'required',
		'telefono' => 'required',
		'correo' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nombres','apellidos','telefono','correo'];



}
