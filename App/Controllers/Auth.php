<?php
/**
 * Created by PhpStorm.
 * User: jose
 * Date: 8/24/17
 * Time: 4:49 PM
 */

class Auth extends Controller {

    private $user;

    public function __construct() {
        $this->user = $this->model("Usuario");
    }

    public function login() {

        if (isset($_POST['email']) && isset($_POST['senha'])) {

            $user = Usuario::where("email", $_POST['email'])
                            ->where("senha", $_POST['senha'])
                            ->get()[0];

            echo json_encode($user);

        }

    }

    public function cadastro() {

        if (isset($_POST["nome"])) {

            require_once 'Response.php';

            if (count(Usuario::where("email", $_POST["email"])->get()) > 0) {

                $response = new Response(false, "Ocorreu um erro ao cadastrar usuário!");

            }else {
                
                $this->user->nome = $_POST["nome"];
                $this->user->email = $_POST["email"];
                $this->user->senha = $_POST["senha"];

                $this->user->save();
                $response = new Response(true, "Usuário cadastrado com sucesso!");
            }

            echo json_encode($response);
        }

    }

}
