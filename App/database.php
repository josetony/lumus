<?php
/**
 * Created by PhpStorm.
 * User: jose
 * Date: 8/22/17
 * Time: 11:31 PM
 */

use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule();

$capsule->addConnection([
    "driver" => "mysql",
    "host" => "localhost",
    "username" => "root",
    "password" => "",
    "database" => "lumus",
    "charset" => "utf8",
    "collation" => "utf8_general_ci",
    "prefix" => ""
]);

$capsule->bootEloquent();