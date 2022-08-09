<?php
require "../php/mysql.php";
$link = new mysqlPDO();

$sql="select * from index_php";
$data = $link->getAll($sql);
require "./index.html";
?>