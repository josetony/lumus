<?php

class Controller{

	public function model($model){
		
		$modelPath = "../App/Models/".$model.".php";

		if(file_exists($modelPath)){
			require $modelPath;
			return new $model;
		}
	}

	public function view($view, $data=[]){

		$viewPath = "../App/Views/".$view.".php";
		
		if(file_exists($viewPath)){
			require $viewPath;
		}

	}

	protected function asset($asset)
    {
        $asset = str_replace('../','', $asset);
        
        return PUB.'assets/'.$asset;
    }

    public function redirect($path){
    	header('location:'.PUB."".$path.'');
    }


}