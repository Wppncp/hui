<?php
//响应头
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: token, Origin, X-Requested-With, Content-Type, Accept, Authorization");
header('Access-Control-Allow-Methods: POST,GET,PUT,DELETE,OPTIONS');

if(null !== ($_GET["name"] && $_GET["code"])){
	$account = $_GET["name"];
	$code = $_GET["code"];
	$dis = $_GET["dis"];
			if($dis == "1"){
                $dis = 'clothes';
            }
            if($dis == "2"){
                $dis = 'drinks';
            }
            if($dis == "3"){
                $dis = 'makeup';
            }
            if($dis == "4"){
                $dis = 'group_purchase';
            }
            if($dis == "5"){
                $dis = 'bidding';
            }
            if($dis == "6"){ 
                $dis = 'global_purchase';
            }
            if($dis == "7"){
                $dis = 'delicious_food';
            }
            if($dis == "8"){
                $dis = 'household_products';
            }
            if($dis == "9"){
                $dis = 'electronics';
            }
            if($dis == "10"){
                $dis = 'electronics';
            }
	require "mysql.php";
	$link = new mysqlPDO();
	$sql_isset_table = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='hui' AND TABLE_NAME='{$account}' ";
	if($link->getAll($sql_isset_table) == false){
		$sql_create ="CREATE TABLE `hui`.`{$account}` ( `code` INT(20) NOT NULL , `dis` VARCHAR(20) NOT NULL ) ENGINE = MyISAM";
//		$sql_create = "CREATE TABLE `hui`.`{$account}` (`code` INT(20) NOT NULL ) ENGINE = MyISAM"; 
		$create = $link->execute($sql_create);
		$sql_inset = "INSERT INTO `{$account}`(`code`, `dis`) VALUES ({$code},'{$dis}')";
//		$sql_inset = "INSERT INTO `{$account}`(`code`) VALUES ({$code})";
		$inset = $link->execute($sql_inset);
	}
	else{
		$sql_isset_field = "SELECT `code`, `dis` FROM `{$account}` WHERE  `dis`='{$dis}' and `code` ={$code}";
//		$sql_isset_field = "SELECT `code`, `dis` FROM `{$account}` where `code` = {$code}";
		if($link->getAll($sql_isset_field)==false){
			$sql_inset = "INSERT INTO `{$account}`(`code`, `dis`) VALUES ({$code},'{$dis}')";
//			$sql_inset = "INSERT INTO `{$account}`(`code`) VALUES ({$code})";
			$inset = $link->execute($sql_inset);
		}
	}
}
?>