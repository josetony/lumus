<?php


class Response {

	public $done;
	public $message;

	 public function __construct($done, $message) {

	 	$this->done = $done;
	 	$this->message = $message;

	 }

}