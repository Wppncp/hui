<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
    <link href="../css/seller_center_mange.css" rel="stylesheet" type="text/css" />
    <title>商品管理</title>
</head>
<body>
<body onselectstart="return false" oncontextmenu="return false">
    <div id="header">
        <h1><img src="../images/index/Mai Tai.png" />惠生活</h1>
    </div>
    <table id="right"  cellspacing="0" class="mange_table" >
        <thead style="background:#f8a100; padding-left:10px; color:#FFF;">
            <th colspan=7> 您当前的位置：商品管理－＞管理商品</th>
        </thead>
        <tbody>
            <tr>
                <th>商品类别</th>
                <th>商品名称</th>
                <th>商品现价</th>
                <th>商品原价</th>
                <th>商品描述</th>
                <th>商品图片</th>
                <th>操作</th>
            </tr>
            <?php 
                require "../php/mysql.php";
                $pdo = new mysqlPDO();
                if(isset($_GET['dis']) && isset($_GET['code']) && isset($_GET['name'])){
                    $name = $_GET['name'];
                    $dis = $_GET['dis'];
                    $code = $_GET['code'];
                    $key = true;
                    if($key==true){
                        $sql_delete_dis = "DELETE FROM `{$dis}` WHERE code ={$code}";
                        $sql_delete_table = "DELETE FROM `{$name}_table` WHERE code ={$code} and dis ='{$dis}' ";
                        $pdo->execute($sql_delete_dis);
                        $pdo->execute($sql_delete_table);
                    }
                }
                
                if(isset($_GET['name'])){
                    $key=false;
                    $name = $_GET['name'];
                    $data=[];
                    $type=[];
                    $sql_seach="select * from `{$name}_table`";
                    $res = $pdo->getAll($sql_seach);
                    foreach($res as $key=>$value){
                        $sql = "select * from {$value['dis']} where code = {$value['code']}";
                        $result = $pdo->getAll($sql);
                        array_push($type,$value['dis']);
                        array_push($data,$result);
                    }
                    foreach($data as $keys=>$values){
                        foreach($values as $k=>$v){
                            // var_dump($keys);
                            // var_dump($values);
                            // var_dump($v); 
                            // var_dump($k);
                            
            ?>

            <tr class="tr_<?php echo($keys); ?>"> 
                <td class="type"><?php echo($type[$keys]); ?></td>
                <td><?php echo($v['shop_name']); ?></td>
                <td><?php echo($v['nowprice']); ?></td>
                <td><?php echo($v['oldprice']); ?></td>
                <td><?php echo($v['discribe']); ?></td>
                <td><img src="<?php echo($v['src']);  ?>" alt=""></td>
                <td><button onclick="Delete_shop(event,'<?php echo($type[$keys]); ?>',<?php echo($v['code']); ?>)">删除<tton></td>
                <td class="hidden_code" style="display:none"><?php echo($v['code']); ?></td>
            </tr>
            <?php
                    }
                } 
            // if($key==false){
            //     $sql_delete_dis = "DELETE FROM `{$res[0]['dis']}` WHERE code ={$result[0]['code']}";
            //     $sql_delete_table = "DELETE FROM `{$name}_table` WHERE code ={$result[0]['code']} and dis ='{$res[0]["dis"]}' ";
            //     $pdo->execute($sql_delete_dis);
            //     $pdo->execute($sql_delete_table);
            // }
        }
            ?>
        </tbody>
    </table>
    <h2 class="retreat"><img src="../images/shoppingCart/后退.png" alt=""></h2>
    <footer>
        <p>地址：仅供学习 版权所有：仅供学习</p>
         <p>互联网信息服务备案编号：仅供学习  技术支持：仅供学习</p>
    </footer>
    <script src="../js/seller_center_mange.js"></script>
    <script>
    </script>
</body>
</html>