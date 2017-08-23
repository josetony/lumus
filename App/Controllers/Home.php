<?php
/**
 * Created by PhpStorm.
 * User: jose
 * Date: 8/22/17
 * Time: 11:40 PM
 */

class Home extends Controller {

    private $user;
    public function __construct() {
       $this->user = $this->model("Usuario");
    }

    public function index() {

        echo $this->user->find(2)->email;

    }

}