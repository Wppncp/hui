<?php
header("content-type:text/html;charset=utf8");
require 'mysql.php';
session_start();

class user{
	private $name;
	private $pwd;	
	function login(){
		if(isset($_SESSION['account'])){
			return true;
		}elseif($_POST){
			$name = $_POST['passLogin_phono'];
			$pwd = $_POST['passLogin_pas'];
			$link = new mysqlPDO();
			$sql_account = "SELECT * FROM `users` where account = '{$name}'";
			$data = (($link->getRow($sql_account)!== false) ? $link->getRow($sql_account) : 0);
			if($data !== 0){
				if($pwd == $data['password']){
					$_SESSION['account'] = $name;
					return true;	
				}else{
					echo "<script>alert('密码错误');</script>";
					return false; 
				}
			}else{
				echo "<script>alert('请注册');</script>";
				return false; 
			}
		}else{
			return false;
		}
	}
}

$user = new user();
$cc = $user->login();
setcookie("userName",$_POST["passLogin_phono"]);

if($cc == true && isset($_SESSION['account'])){
	echo "<script>window.location.href='../HTML/index.php?name={$_POST["passLogin_phono"]}';document.cookie='userName={$_POST["passLogin_phono"]}';</script>";
}else{
	echo "<script>window.location.href='../HTML/login.html'</script>";	
}
?>