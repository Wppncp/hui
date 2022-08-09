<?php
//响应头
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: token, Origin, X-Requested-With, Content-Type, Accept, Authorization");
header('Access-Control-Allow-Methods: POST,GET,PUT,DELETE,OPTIONS');
//查询可用编号
class emcode{
	public function find($dis){
		require "mysql.php";
		$link = new mysqlPDO();
		$sql_code = "SELECT MAX(`number`) FROM {$dis}";
		$reul = $link->getRow($sql_code);
		echo $reul['MAX(`number`)'];
		//var_dump($reul['MAX(`code`)']);
	}
}
if(isset($_GET['dis'])){
	$dis = $_GET['dis'];
	$zz = new emcode;
	$zc = $zz->find($dis);
	echo($zc);
}

?>