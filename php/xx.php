<?php
//../images/goods/打折优惠.png
//响应头
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: token, Origin, X-Requested-With, Content-Type, Accept, Authorization");
header('Access-Control-Allow-Methods: POST,GET,PUT,DELETE,OPTIONS');
require "mysql.php";
$link = new mysqlPDO();
//for($i=1;$i<=21;$i++){
//$sql = "INSERT INTO `clothes`(`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/caidan.jpg','潮流男套装，BIU出你的运动型',349.9,349.9,'','detail.php?code={$i}&dis=1','{$i}','男装')";
//$result_code = $link->execute($sql);	
//}
//for($i=1;$i<=20;$i++){
//$sql = "INSERT INTO `drinks`(`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/coco.jpg','百事，纯正的味儿',9.9,29.9,'../images/goods/zk.png','detail.php?code={$i}&dis=2','{$i}','可乐')";
//$result_code = $link->execute($sql);	
//}
//for($i=1;$i<=20;$i++){
//$sql = "INSERT INTO `makeup`(`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/makeup.jpg','唤醒美好一天',29,35,'../images/goods/zk.png','detail.php?code={$i}&dis=3','{$i}','洗面奶')";
//$result_code = $link->execute($sql);	
//}
//for($i=1;$i<=20;$i++){
//$sql = "INSERT INTO `group_purchase`(`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/tuangou.jpg','十锦荟萃，有机蔬菜新鲜上市',50,50,'','detail.php?code={$i}&dis=4','{$i}','有机蔬菜礼包')";
//$result_code = $link->execute($sql);
//}
//for($i=1;$i<=20;$i++){
//$sql = "INSERT INTO `bidding` (`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/JULY.jpg','JULY新款复古现代新颖包',8699,8699,'','detail.php?code={$i}&dis=5','{$i}','JULY 夏不热系列精品挎包')";
//$result_code = $link->execute($sql);	
//}
//for($i=1;$i<=20;$i++){
//$sql = "INSERT INTO `global_purchase`(`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/JUNE.jpg','JUNE 高级手工精湛工艺，绽放你的暗调魅力',8699,8699,'','detail.php?code={$i}&dis=6','{$i}','JUNE 黑色小皮鞋')";
//$result_code = $link->execute($sql);	
//}
//for($i=1;$i<=20;$i++){
//$sql = "INSERT INTO `delicious_food`(`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/food.jpg','八寸樱桃完子蛋糕',24,24,'','detail.php?code={$i}&dis=7','{$i}','樱桃完子')";
//$result_code = $link->execute($sql);	
//}
//for($i=1;$i<=20;$i++){
//$sql = "INSERT INTO `household_products`(`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/jiaju.jpg','禅意高远，淡泊明志，你的不二茶几',224,224,'','detail.php?code={$i}&dis=8','{$i}','茶几')";
//$result_code = $link->execute($sql);	
//}
//for($i=1;$i<=22;$i++){
//$sql = "INSERT INTO `electronics`(`code`, `src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$i}','../images/goods/electron1.jpg','Lenovo联想 i7超薄本 原装正品 银色 12屏',3224,3224,'','detail.php?code={$i}&dis=9','{$i}','Lenovo电脑')";
//$result_code = $link->execute($sql);	
//}
?>