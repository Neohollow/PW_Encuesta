<?php
/**
 * @author José Joaquín Pérez-Calderón Ortiz
 * @package Clases
 * @version 1.0
 */
class Router
{
	private $request;

	/**
	 * @param $request url para acceder a la ruta de la web
	 */
	public function __construct($request){
		$this->request = $request;
	}
	public function get($route, $file){
		$uri = trim( $this->request, "/" );//Elimino espacios en blanco (u otro tipo de caracteres) del inicio y el final de la cadena.
		$uri = explode("/", $uri);
		if($uri[0] == trim($route, "/")){
			array_shift($uri);//Elimino el primer elemento de la uri
			$args = $uri;
			require $file . '.php';
		}
	}
}