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

        $nome = Usuario::where("email", "devme.tony@gmail.com")->where("senha","123456")->get();

        echo $nome[0]->nome;

    }

}