<?php
//响应头
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: token, Origin, X-Requested-With, Content-Type, Accept, Authorization");
header('Access-Control-Allow-Methods: POST,GET,PUT,DELETE,OPTIONS');


require "mysql.php";
$link = new mysqlPDO();
if(null !== ($_GET["name"] && $_GET["hang"])){
	$name = $_GET["name"];
	$hang = $_GET["hang"];
	$sql = "SELECT * FROM `{$name}` LIMIT {$hang},1";
	$result_code = $link->getRow($sql);
	$sql_delete = "DELETE FROM `{$name}` WHERE code = {$result_code['code']} and dis = '{$result_code['dis']}'";
	$result = $link->execute($sql_delete);
}
?>