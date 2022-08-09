<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>好物，惠生活</title>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/common.css">
    <script src="../js/flexble.js"></script>
    <link rel="stylesheet" href="../css/detail.css">
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
            <li ><a style="color:black;"></a></li>
        </ol>
    </div>

    <!-- 内容 -->
    <section>
        <div class="detail">
            
        <?php 
            require "../php/mysql.php";
            $code = (int)$_GET["code"];
            $dis = $_GET["dis"];
            if($dis == "1"){
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
	        $pdo = new mysqlPDO();
            $sql = "select * from {$dis} where code = {$code}";
	        $res = $pdo->getAll($sql);
            foreach($res as $item){
        ?>
            <div class="detail_show">
            <img src="<?php echo $item['src'] ?>">
            <p class="shara"><span></span>分享</p>
            </div>
            <ul>
                <h1 class="shop_name"><?php echo $item['shop_name'] ?></h1>
                <li class="discribe" style="font-size:0.15rem"><?php echo $item['discribe'] ?></li>
                <li class="price">￥<span class="nowprice"><?php  echo $item['nowprice'] ?></span>&nbsp;<del class="oldPice">￥<?php echo $item['oldprice']  ?></del>&nbsp;&nbsp;&nbsp;<img src="<?php  echo $item['precent'] ?>" alt=""></li>
                <li class="count">
                    <span class="subtract">-</span>
                    <span class="num">1</span>
                    <span class="plus">+</span>
                </li>
                <li><input type="button" class="shopCar" value="加入购物车"><input type="button" class="buyIt" value="买它"></li>
            </ul>
        <?php
            }
        ?>
             
        </div>  
    </section>

    <!-- 页底 -->
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
            <h3 >无备案<br>网站仅供学习参考，如有侵权请联系，立即删除</h3>
        </div>
        <div class="retop" style="display: none;"></div>
    </footer>

    <script src="../js/detail.js"></script>
</body>
</html>