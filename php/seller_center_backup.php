<?php
require_once("mysql.php");
require_once("../HTML/seller_center.html");
$GLOBALS['user_name'] = $_GET['name'];
//echo $user_name;
class upload{
	//上传文件的限制条件
	private $file_path = './public/';  //静态资源路径
	private $file_type = ['image/gif','image/jpeg','image/png','image/bmp'];//类型
	private $file_size = 2*1024*1024; //大小
	
	//定义文件上传验证函数,参数为获取的$_FILES的值。
	function uploadFile($file){
		$type = $file['type']; 
		$size = $file['size'];
		$tmp_name = $file['tmp_name'];
		$name = $file['name'];
		$error = $file['error'];
		
		if($error==0){
			if(!in_array($type,$this->file_type)){
				return ['res'=>false,'msg'=>'文件类型不符合要求'];
			}elseif($size>$this->file_size){
				return ['res'=>false,'msg'=>'文件大小不符合要求'];
			}else{  
					$path = '../images/upimages/'.$name; //存储到数据库的路径
					$upload_path = $path;
					move_uploaded_file($tmp_name,$upload_path);
					return ['res'=>true,'msg'=>'文件上传成功','path'=>$path];
			}
		}else{			
			return ['res'=>false,'msg'=>'文件上传失败'];
		}
	}
}

class adBookModel{
	public function __construct(){
		$this->conn = new mysqlPDO();
	}
	
	//添加商品记录
	public function insert(){
		//1；获取表单数据
		$bookname = $_POST['name']; //商品名称
		$typeid = $_POST['lx']; //商品类型
		$code = $_POST['code'];//商品编码
		$author = $_POST['zz']; //法人
		$pubhouse = $_POST['cbs']; //发布商铺
		$nian = $_POST['nian']; //年
		$yue = $_POST['yue']; //月
		$ri = $_POST['ri']; //日
		$pubdate = "{$nian}-{$yue}-{$ri}";//出版日期
		$nowprice = $_POST['jg']; //现在价格
		$oldprice = $_POST['zk']; //原来价格
		$photo = ''; //商品图片
		$introduction = $_POST['jj']; //商品简介
		$recommend = $_POST['sftj']; //是否推荐
		$newbook = $_POST['newbook']; //新商品预售
		
		//2:获取商品图片路径
		$file = $_FILES['file'];
//		var_dump($file);
		$upload = new upload();
		$result_up = $upload->uploadFile($file);
		$photo = $result_up['path'];	
		//3.获取折扣图片路径
//		$upload = new upload();
//		$result_up = $upload->uploadFile($discount_file);
//		$discount_photo = $result_up['path'];	
		//3:判断商品编码是否已经存在数据库表中。	
		$sql = "SELECT * from goods WHERE code='{$code}'";
		$result = $this->conn->getRow($sql);
		if($result){
			echo "<script>alert('商品编码已经存在')</script>";
			return false;
		}
//		echo "c1";
//		echo ("{$code},{$photo},{$introduction},{$nowprice},{$oldprice},' ',detail.php?code={$code}");
		//2:执行SQL语句，进行数据添加。
		$sql_insert = "INSERT INTO `goods`(`code`,`src`, `discribe`, `nowprice`, `oldprice`, `precent`, `a`) VALUES ('{$code}','{$photo}','{$introduction}','{$nowprice}','{$oldprice}','','detail.php?code={$code}')";
		return $this->conn->execute($sql_insert);		
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
//				echo $GLOBALS['user_name'];
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