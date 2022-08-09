<?php
header("content-type:text/html;charset=utf8");
require 'mysql.php';

class user{
	private $name;
	private $pwd;	
	function register(){
		if($_POST){
			$name = $_POST['name'];
			$pwd = $_POST['password'];
			$link = new mysqlPDO();
			$sql_account = "SELECT `account` FROM `users` where account = '{$name}'";
			$data = (($link->getRow($sql_account)!== false) ? $link->getRow($sql_account) : 0);
			if($data !== 0){
				return 1;
			}else{
				$sql = "INSERT INTO `users`(`account`, `password`) VALUES ('{$name}','{$pwd}')";
				$creave = $link->execute($sql);
				return 3;
			}
		}else{
			return 2;
		}
	}
}

$user = new user();
$cc = $user->register();
if($cc==1){
	echo "<script>alert('用户已存在，请直接登录');window.location.href='../HTML/login.html'</script>";
}elseif($cc==2){
	echo "<script>alert('提交错误，请重新注册');window.location.href='../HTML/register.html'</script>";
}elseif($cc==3){
	echo "<script>alert('惠生活欢迎您的加入，请登录浏览吧！');window.location.href='../HTML/login.html'</script>";
}
?>