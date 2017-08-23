<?php
/**
 * Created by PhpStorm.
 * User: jose
 * Date: 8/23/17
 * Time: 12:01 AM
 */

class Usuario extends Model {

    protected $fillable = ["nome","email"];
    public $timestamps = [];

}