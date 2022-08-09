<?php
//响应头
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: token, Origin, X-Requested-With, Content-Type, Accept, Authorization");
header('Access-Control-Allow-Methods: POST,GET,PUT,DELETE,OPTIONS');

if(isset($_GET['ask'])){
	$accout = $_GET['ask'];
	require "mysql.php";
	$link = new mysqlPDO();
//	$sql = "SELECT * FROM `goods` WHERE code in (SELECT code FROM `{$accout}`)";
	$sql = "select * from `{$accout}`";
	$user_data=$link->getAll($sql);
	$data = [];
	for($i=0;$i<count($user_data);$i++){
			$dis = $user_data[$i]['dis'];
			$code = $user_data[$i]['code'];
			$sql = "select * from `$dis` where code = $code";
			$cloun_data = $link->getAll($sql);
			array_push($data,$cloun_data[0]);		
	}
	$data = json_encode($data);
//	var_dump($user_data) ;
//	var_dump($data) ;
//	var_dump(json_decode($data)[0][0]->code);
//	var_dump(json_decode($data)[1][0]->code);
	echo $data;
}
?>