<?php
//响应头
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: token, Origin, X-Requested-With, Content-Type, Accept, Authorization");
header('Access-Control-Allow-Methods: POST,GET,PUT,DELETE,OPTIONS');

require "mysql.php";
$link = new mysqlPDO();
if(isset($_GET["dis"]) && isset ($_GET["fenye"])){
	$dis = $_GET["dis"];
//	var_dump($dis);
	$fenye = $_GET["fenye"];
	if($dis == '1'){
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
//	var_dump($dis);
	$sql = "select * from {$dis} limit " . (($fenye-1)*20) . "," . 20;
	$result = $link->getAll($sql);
	echo json_encode($result);
//	$sql_delete = "DELETE FROM `{$name}` WHERE code = {$result_code['code']}";
//	$result = $link->execute($sql_delete);
}
if(isset($_GET['disp']) == 'NaN'){
    $keyword = $_GET['header_seach'];
	$sql_seach="SELECT * FROM (select * from clothes union  all select * from drinks UNION ALL SELECT * FROM makeup UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM bidding UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM delicious_food UNION ALL SELECT * FROM household_products UNION ALL SELECT * FROM electronics) as a WHERE shop_name LIKE '%{$keyword}%'";
//    $sql = "select * from goodes where shop_name like '%{$keyword}%' limit 15,5";
	$res = $link->getAll($sql_seach);
	$data = json_encode($res);
	echo $data;
} 
?>