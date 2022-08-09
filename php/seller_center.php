<?php
require_once("mysql.php");
require_once("../HTML/seller_center.html");
$GLOBALS['user_name'] = $_GET['name'];
////echo $user_name;

class pictureWork{
	//图片处理，将上传的图片三维数组转为一维数组，新的数组的结构为：info=>i=>('name','size'.....)
	public function buildInfo(){
	//     $info = $_FILES;
		$i = 0;
		foreach ($_FILES as $v){//三维数组转换成2维数组
			if(is_string($v['name'])){ //单文件上传
				$info[$i] = $v;
				$i++;
			}else{ // 多文件上传
				foreach ($v['name'] as $key=>$val){//2维数组转换成1维数组
					//取出一维数组的值，然后形成另一个数组
					//新的数组的结构为：info=>i=>('name','size'.....)
					$info[$i]['name'] = $v['name'][$key];
					$info[$i]['size'] = $v['size'][$key];
					$info[$i]['type'] = $v['type'][$key];
					$info[$i]['tmp_name'] = $v['tmp_name'][$key];
					$info[$i]['error'] = $v['error'][$key];
					$i++;
				}
			}
		}
		return $info;
	}
	 function getExt($fileName){
		$re = explode('.',$fileName);
		$rw = end($re);
		$rq = strtolower($rw);
		return $rq;
		/** strtolower(end(explode('.',$fileName)))
		 * strtolower() 函数把字符串转换为小写。
		 * end()输出数组中最后一个元素的值
		 * explode(),拆分字符串
		 */
	}	
	 function getUniName(){
		return md5(uniqid(microtime(true),true));
	}
	//上传图片
	function uploadfile($path="../images/upimages/",//图片存储的文件路径
		$allowExt = array('png','jpg','jpeg','gif'),//允许上传的图片格式
		$maxSize=1048576,/*允许上传的图片最大数据*/ $imgFlag=true /*判断是否是一张真实的图片，非改后缀成为的伪图片*/){ 

		if (! file_exists($path)) {
			mkdir($path,0777,true);
		}
		$i = 0;
		$infoArr = pictureWork::buildInfo();
		foreach ($infoArr as $val) {
			if ($val['error'] === UPLOAD_ERR_OK) {

				$ext = pictureWork::getExt($val['name']);
				for($j=0;$j<count($allowExt);$j++){
					if($ext == $allowExt[$j]){
						$m = "此文件适合上传标准";
						$h = $m;
					}else {
						$m = "此文件不可以被上传";
					}
				}
				if($h){
					$mes = "文件格式正确";
				}else{
					$mes = "文件格式错误";
					exit;
				}
				if($val['size']>$maxSize){
					$mes = "文件太大了";
					exit;
				}
				if($imgFlag){
					$result = getimagesize($val['tmp_name']);
					if(!$result){
						$mes = "您上传的不是一个真正图片";
						exit;
					}
				}
				if(!is_uploaded_file($val['tmp_name'])){
				   $mes = "不是通过httppost传输的";
				   exit;
				}

				$realName = pictureWork::getUniName().".".$ext;
				$destination = $path.$realName;
				if(move_uploaded_file($val['tmp_name'],$destination)){
					$val['name'] = $realName;
					unset($val['error'],$val['tmp_name'],$val['size'],$val['type']);
					$uploadedFiles[$i]=$val;//?????????
					$i++;
				}
			}else {
				switch ($val['error']) {
					case 1: // UPLOAD_ERR_INI_SIZE
						$mes = "超过配置文件中上传文件的大小";
						break;
					case 2: // UPLOAD_ERR_FORM_SIZE
						$mes = "超过表单中配置文件的大小";
						break;
					case 3: // UPLOAD_ERR_PARTIAL
						$mes = "文件被部分上传";
						break;
					case 4: // UPLOAD_ERR_NO_FILE
						$mes = "没有文件被上传";
						break;
					case 6: // UPLOAD_ERR_NO_TMP_DIR
						$mes = "没有找到临事文件目录";
						break;
					case 7: // UPLOAD_ERR_CANT_WRITE
						$mes = "文件不可写";
						break;
					case 8: // UPLOAD_ERR_EXTENSION
						$mes = "php扩展程序中断了上传程序";
						break;
				}
				echo $mes;
			}
		}
		return $uploadedFiles;//上传文件被编辑的文件名组成的数组
	}
}
//$sds= new pictureWork;
//$ccpt = $sds->uploadfile();
//var_dump($ccpt);

class adBookModel{
	public function __construct(){
		$this->conn = new mysqlPDO();
	}
	
	//添加商品记录
	public function insert(){
		//1；获取表单数据
		$shop_name = $_POST['shop_name']; //商品名称
		$typeid = $_POST['lx']; //商品类型
		$code = $_POST['code'];//商品编码
		$author = $_POST['zz']; //法人
		$pubhouse = $_POST['cbs']; //发布商铺
//		$nian = $_POST['nian']; //年
//		$yue = $_POST['yue']; //月
//		$ri = $_POST['ri']; //日
//		$pubdate = "{$nian}-{$yue}-{$ri}";//出版日期
		$nowprice = $_POST['jg']; //现在价格
		$oldprice = $_POST['zk']; //原来价格
		//$photo = ''; //商品图片
		$introduction = $_POST['jj']; //商品简介
		$recommend = $_POST['sftj']; //是否推荐
		$newbook = $_POST['newbook']; //新商品预售
		
		//3.获取折扣图片路径
//		$file = $_FILES['discount'];
//		$upload = new upload();
//		$result_up = $upload->uploadFile($file);
//		$discount_photo = $result_up['path'];	
		//3:判断商品编码是否已经存在数据库表中。	
		$sql = "SELECT * from {$typeid} WHERE code='{$code}'";
		$result = $this->conn->getRow($sql);
		if($result){
			echo "<script>alert('商品编码已经存在')</script>";
			return false;
		}
//		echo "c1";
		$picturework= new pictureWork;
		$up_picture_array = $picturework->uploadfile();
		
		
		if($typeid == 'clothes'){
			$dis = 1;
		}
		if($typeid == "drinks"){
			$dis = 2;
		}
		if($typeid == "makeup"){
			$dis = 3;
		}
		if($typeid == "group_purchase"){
			$dis = 4;
		}
		if($typeid == "bidding"){
			$dis = 5;
		}
		if($typeid == "global_purchase"){ 
			$dis = 6;
		}
		if($typeid == "delicious_food"){
			$dis = 7;
		}
		if($typeid == "household_products"){
			$dis = 8;
		}
		if($typeid == "electronics"){
			$dis = 9;
		}
		
//		var_dump(count($up_picture_array));
//		echo ("{$code},{$ccpt[0]['name']},{$introduction},{$nowprice},{$oldprice},' ',detail.php?code={$code}");
		//2:执行SQL语句，进行数据添加。
		for($z=0;$z<count($up_picture_array);$z++){
			$up_picture_name = $up_picture_array[$z]['name'];
			$sql_isset_table = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='hui' AND TABLE_NAME='{$GLOBALS['user_name']}_table' ";
			if($this->conn->getAll($sql_isset_table) == false){
				$sql_create ="CREATE TABLE `hui`.`{$GLOBALS['user_name']}_table` ( `code` INT(20) NOT NULL , `dis` VARCHAR(20) NOT NULL ) ENGINE = MyISAM";
				$create = $this->conn->execute($sql_create);
				$sql_inset = "INSERT INTO `{$GLOBALS['user_name']}_table`(`code`, `dis`) VALUES ({$code},'{$typeid}')";
				$inset = $this->conn->execute($sql_inset);
				if($nowprice<$oldprice){
					$sql_insert = "INSERT INTO `{$typeid}`(`code`,`src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$code}','../images/upimages/{$up_picture_name}','{$introduction}','{$nowprice}','{$oldprice}','../images/goods/zk.png ','detail.php?code={$code}&dis={$dis}', '{$code}','{$shop_name}')";
					return $this->conn->execute($sql_insert);	
				}else{
					$sql_insert = "INSERT INTO `{$typeid}`(`code`,`src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$code}','../images/upimages/{$up_picture_name}','{$introduction}','{$nowprice}','{$oldprice}','','detail.php?code={$code}&dis={$dis}','{$code}','{$shop_name}')";
					return $this->conn->execute($sql_insert);
				}
			}else{
				$sql_inset = "INSERT INTO `{$GLOBALS['user_name']}_table`(`code`, `dis`) VALUES ({$code},'{$typeid}')";
				$inset = $this->conn->execute($sql_inset);
				if($nowprice<$oldprice){
					$sql_insert = "INSERT INTO `{$typeid}`(`code`,`src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$code}','../images/upimages/{$up_picture_name}','{$introduction}','{$nowprice}','{$oldprice}','../images/goods/zk.png ','detail.php?code={$code}&dis={$dis}', '{$code}','{$shop_name}')";
					return $this->conn->execute($sql_insert);	
				}else{
					$sql_insert = "INSERT INTO `{$typeid}`(`code`,`src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`, `number`, `shop_name`) VALUES ('{$code}','../images/upimages/{$up_picture_name}','{$introduction}','{$nowprice}','{$oldprice}','','detail.php?code={$code}&dis={$dis}','{$code}','{$shop_name}')";
					return $this->conn->execute($sql_insert);
				}
			}
				
		}
	}
}

class adBookController{
	//添加商品页面
	public function addAction(){
		if($_POST){
			$abm = new adBookModel();
			if($abm->insert()){
				//echo $GLOBALS['user_name'];
				echo  "<script>alert('商品添加成功');window.location.href='../HTML/index.php?name={$GLOBALS["user_name"]}';</script>";	
			}else{
				echo $GLOBALS['user_name'];
				echo "<script>alert('商品添加失败');window.location.href='../HTML/seller_center.html?name={$GLOBALS["user_name"]}';</script>";	
			}
		}else{
			require '../HTML/seller_center.html?name={$GLOBALS["user_name"]}';
		}
	}
}

$nn = new adBookController;
$mm = $nn->addAction();
?>