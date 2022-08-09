<?php
	class mysqlPDO{
		private $dsn = "mysql:host = loaclhost;port = 3306;dbname=hui;charset=utf8";
		private $name = 'root';
		private $pwd = '';
		private function dbConnection(){
			try{
				$db = new PDO($this->dsn,$this->name,$this->pwd);
				return $db;
			}catch(PDOExcption $e){
				exit('数据库连接失败'.$e->getMessage());
			}
		}
		public function getAll($sql){
			$db = $this->dbConnection();
			$result = $db->query($sql);
			return $result->fetchAll(PDO::FETCH_ASSOC);
		}
		public function getRow($sql){
			$db = $this->dbConnection();
			$result = $db->query($sql);
			return $result->fetch(PDO::FETCH_ASSOC);
		}
		public function execute($sql){
			$db = $this->dbConnection();
			$result = $db->exec($sql);
			return $result;
		}
	}
?>