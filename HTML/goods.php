<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>惠生活，愿做您的哆啦A梦</title>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/common.css">
    <script src="../js/flexble.js"></script>
    <link rel="stylesheet" href="../css/goods.css">
</head>

<body onselectstart="return false" oncontextmenu="return false">
    <!-- header -->
    <div class="header">
        <div class="logoBox">
            <div class="logo"> </div>
            <div class="logoFont">
                <div class="font">惠生活</div>
                <div class="com">hui.com</div>
            </div>
        </div>
        <div class="seach">
            <form action="goods.php?" class="seach_form" method="get">
                <input class="seach_name" type="hidden" name="name" value="">
                <input class="seachBox" type="search" value="" name="header_seach" placeholder="立即得到你想得到">
                <input class="seach_dis" type="hidden" name="disp" value="NaN">
                <input type="submit" value="搜索" class="seach_sumbit">
            </form>
            <ul class="seachCart">
                <li><a>掌上直通车</a></li>
                <li><a><img src="../images/index/购物车.png">购物车</a></li>
                <li><a><img src="../images/index/收藏夹.png">收藏夹</a></li>
                <li><a><img src="../images/index/历史.png">足迹回溯</a></li>
                <li><a>我的style</a></li>
                <li><a>卖家中心</a></li>
                <li><a>帮助中心</a></li>
            </ul>
        </div>
        <div class="loginaer">
            <button class="login">
                <div></div>
                <ol>登录/注册 &nbsp;&nbsp;></ol>
            </button>
        </div>
    </div>

    <!-- nav -->
    <div class="nav">
        <ol class="sectionNav">
            <li><a style="color: #e7e7e7;">全部商品分类</a></li>
            <li><a style="color: black;">服装城</a></li>
            <li><a style="color: black;">饮品柜</a></li>
            <li><a style="color: black;">美妆馆</a></li>
            <li><a style="color: black;">团购</a></li>
            <li><a style="color: black;">竞价</a></li>
            <li><a style="color: black;">全球购</a></li>
            <li><a style="color: black;">美食汇</a></li>
            <li><a style="color: black;">居家</a></li>
            <li><a style="color: black;">电子</a></li>
            <li><a style="color:black;"></a></li>
        </ol>
    </div>

    <!-- 内容 -->
    <section>
        <div>
            <ul class="goodsContent">
            <?php 
                require "../php/mysql.php";
                $pdo = new mysqlPDO();
                if(isset($_GET['dis'])){
                    $dis = (int)$_GET["dis"];
                    $sql = "select * from goods limit " . (($dis-1)*20) . "," . 5;
                }
                if(isset($_GET['disp']) == 'NaN'){
                    $keyword = $_GET['header_seach'];
                    $sql_seach="SELECT * FROM (select * from clothes union  all select * from drinks UNION ALL SELECT * FROM makeup UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM bidding UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM delicious_food UNION ALL SELECT * FROM household_products UNION ALL SELECT * FROM electronics) as a WHERE shop_name LIKE '%{$keyword}%' limit 0,5";
                } 
                $res = $pdo->getAll($sql_seach);
                foreach($res as $item){
            ?>
            
                <li>
                    <a class="a" href="<?php echo $item['a'] ?>">
                        <img src="<?php echo $item['src'] ?>" class="src">
                        <p class="shop_name"><?php echo $item["shop_name"] ?></p>
                        <p class="price_item">
                            <span class="price nowprice">￥<?php echo $item["nowprice"] ?></span>&nbsp;
                            <del class="riPice oldprice">￥<?php echo $item["oldprice"] ?></del>&nbsp;&nbsp;&nbsp;
                            <img class="precent" src="<?php echo $item['precent'] ?>" alt="">
                        </p>
                    </a>
                    <!-- <button class="gouwuche cat">加入购物车</button class="order"><button>现在下单</button>-->
                </li> 
                <!-- <li><a href=""><img src="../images/goods/electron1.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 玫瑰金 12寸</p>
                        <p><span class="price">￥3399.00</span>&nbsp;<del class="riPice">￥3699.00</del>&nbsp;&nbsp;&nbsp;<img src="../images/goods/打折优惠.png" alt=""></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li> -->
            <?php    
                }
            ?>
            </ul>
            <ul>
            <?php 
                if(isset($_GET['dis'])){
                    $dis = (int)$_GET["dis"];
                    $sql = "select * from goods limit " . (($dis-1)*20+5) . "," . 5;
                }
                if(isset($_GET['disp']) == 'NaN'){
                    $keyword = $_GET['header_seach'];
                    $sql_seach="SELECT * FROM (select * from clothes union  all select * from drinks UNION ALL SELECT * FROM makeup UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM bidding UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM delicious_food UNION ALL SELECT * FROM household_products UNION ALL SELECT * FROM electronics) as a WHERE shop_name LIKE '%{$keyword}%'  limit 5,5";
                } 
	            $res = $pdo->getAll($sql_seach);
                foreach($res as $item){
            ?>
                <li><a href="<?php echo $item['a'] ?>"><img src="<?php echo $item['src'] ?>" class="src">
                        <p class="shop_name"><?php echo $item["shop_name"] ?></p>
                        <p class="price_item">
                            <span class="price">￥<?php echo $item["nowprice"] ?></span>&nbsp;
                            <del class="riPice">￥<?php echo $item["oldprice"] ?></del>&nbsp;&nbsp;&nbsp;
                            <img class="precent" src="<?php echo $item['precent'] ?>" alt="">
                        </p>
                    </a>
                    <!-- <button class="gouwuche cat">加入购物车</button class="order"><button>现在下单</button>-->
                </li> 
                <!-- <li><a href=""><img src="../images/goods/electron1.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron1.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron1.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron1.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li> -->
            <?php    
                }
            ?>
            </ul>
            <ul>
            <?php 
                if(isset($_GET['dis'])){
                    $dis = (int)$_GET["dis"];
                    $sql = "select * from goods limit " . (($dis-1)*20+10) . "," . 5;
                }
                if(isset($_GET['disp']) == 'NaN'){
                    $keyword = $_GET['header_seach'];
                    $sql_seach="SELECT * FROM (select * from clothes union  all select * from drinks UNION ALL SELECT * FROM makeup UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM bidding UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM delicious_food UNION ALL SELECT * FROM household_products UNION ALL SELECT * FROM electronics) as a WHERE shop_name LIKE '%{$keyword}%'  limit 10,5";
                } 
	            $res = $pdo->getAll($sql_seach);
                foreach($res as $item){
            ?>
                <li><a href="<?php echo $item['a'] ?>"><img src="<?php echo $item['src'] ?>" class="src">
                        <p class="shop_name"><?php echo $item["shop_name"] ?></p>
                        <p class="price_item">
                            <span class="price">￥<?php echo $item["nowprice"] ?></span>&nbsp;
                            <del class="riPice">￥<?php echo $item["oldprice"] ?></del>&nbsp;&nbsp;&nbsp;
                            <img class="precent" src="<?php echo $item['precent'] ?>" alt="">
                        </p>
                    </a>
                    <!-- <button class="gouwuche cat">加入购物车</button class="order"><button>现在下单</button>-->
                </li> 
                <!-- <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li> --> 
            <?php    
                }
            ?>
            </ul>
            <ul>
            <?php 
                if(isset($_GET['dis'])){
                    $dis = (int)$_GET["dis"];
                    $sql = "select * from goods limit " . (($dis-1)*20+15) . "," . 5;
                }
                if(isset($_GET['disp']) == 'NaN'){
                    $keyword = $_GET['header_seach'];
                    $sql_seach="SELECT * FROM (select * from clothes union  all select * from drinks UNION ALL SELECT * FROM makeup UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM bidding UNION ALL SELECT * FROM group_purchase UNION ALL SELECT * FROM delicious_food UNION ALL SELECT * FROM household_products UNION ALL SELECT * FROM electronics) as a WHERE shop_name LIKE '%{$keyword}%'  limit 15,5";
                } 
	            $res = $pdo->getAll($sql_seach);
                foreach($res as $item){
            ?>
                <li><a href="<?php echo $item['a'] ?>"><img src="<?php echo $item['src'] ?>" class="src">
                        <p class="shop_name"><?php echo $item["shop_name"] ?></p>
                        <p class="price_item">
                            <span class="price">￥<?php echo $item["nowprice"] ?></span>&nbsp;
                            <del class="riPice">￥<?php echo $item["oldprice"] ?></del>&nbsp;&nbsp;&nbsp;
                            <img class="precent" src="<?php echo $item['precent'] ?>" alt="">
                        </p>
                    </a>
                    <!-- <button class="gouwuche cat">加入购物车</button class="order"><button>现在下单</button>-->
                </li> 
                <!-- <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li>
                <li><a href=""><img src="../images/goods/electron2.jpg">
                        <p>Lenovo联想 i7超薄本 原装正品 银色 12寸</p>
                        <p><span class="price">￥3299.00</span>&nbsp;<del class="riPice">￥3699.00</del></p>
                    </a><button class="gouwuche">加入购物车</button><button>现在下单</button></li> -->
             <?php    
                }
            ?>
            </ul>
            
        </div>
    </section>

    <!-- 页底 -->
    <hr>
    <footer>
        <ul>
            <li>
                <h5 class="ture"></h5>
                <div class="service_text">
                    <h4>正品保障</h4>
                    <p>正品保障，提供发票</p>
                </div>
            </li>
            <li>
                <h5 class="fast"></h5>
                <div class="service_text">
                    <h4>急速物流</h4>
                    <p>急速物流，急速送达</p>
                </div>
            </li>
            <li>
                <h5 class="after-sales"></h5>
                <div class="service_text">
                    <h4>售后无忧</h4>
                    <p>7天无理由退货</p>
                </div>
            </li>
            <li>
                <h5 class="help"></h5>
                <div class="service_text">
                    <h4>帮助中心</h4>
                    <p>您的购物指南</p>
                </div>
            </li>
        </ul>
        <div class="mod_help">
            <dl>
                <h5>购物指南</h5>
                <dt>常见问题</dt>
                <dt>购物流程</dt>
                <dt>会员介绍</dt>
            </dl>
            <dl>
                <h5>配送方式</h5>
                <dt>上门自提</dt>
                <dt>海外配送</dt>
                <dt>配送费收费标准</dt>
            </dl>
            <dl>
                <h5>售后服务</h5>
                <dt>售后政策</dt>
                <dt>价格保护</dt>
                <dt>退款说明</dt>
            </dl>
            <dl>
                <h5>支付方式</h5>
                <dt>货到付款</dt>
                <dt>在线支付</dt>
                <dt>分期付款</dt>
            </dl>
            <dl>
                <h5>反馈与帮助</h5>
                <dt class="qq"><img src="../images/index/客服-联系我们.jpg" alt=""></dt>
                <dt style="color: red;">网站仅供学习</dt>
            </dl>
        </div>
        <div class="copyright">
            <ul class="we">
                <li>关于我们</li>
                <li>联系我们</li>
                <li>加入我们</li>
                <li>学习合作</li>
                <li>学习入驻</li>
            </ul>
            <h3>无备案<br>网站仅供学习参考，如有侵权请联系，立即删除</h3>
        </div>
        <div class="retop" style="display:none;"></div>
    </footer>
    <script src="../js/goods.js"></script>
</body>

</html>