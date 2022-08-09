//用户登录后，写上登录账户
window.addEventListener("ready", parameter_name);
function parameter_name() {
  var parameter_array = [];//存储超链接参数的数组
  var prim_parameter_array = location.search.substr(1).split('&');//获取超链接去除‘&’的参数数组
  //将去除‘&’的参数数组，再去除‘=’，成为纯超链接参数的数组
  for (let i = 0; i < prim_parameter_array.length; i++) {
    parameter_array.push(prim_parameter_array[i].split('=')[0]);
    parameter_array.push(prim_parameter_array[i].split('=')[1]);
  }
  if (parameter_array[0] !== undefined) {//沿用index.js，在此判断无用
    var loginer = document.querySelector(".loginaer>.login>ol");
    //获取用户名字
    for (var i = 0; i < parameter_array.length; i++) {
      if (parameter_array[i] == 'name') {
        var parameter_j = i + 1;
        // console.log(parameter_j);
        loginer.innerHTML = parameter_array[parameter_j];
        //为搜索框的form能传递用户名写用户名参数
        document.querySelector(".seach_name").value=parameter_array[parameter_j];
        // console.log(parameter_array[parameter_j]);
        // console.log(parameter_array);
        return { p1: parameter_j, p2: parameter_array };
      }
    }
  }
  return { p1: '', p2: parameter_array };
}
//ajax请求参数
window.addEventListener("load", ajax);
function ajax() {
  var dis = new parameter_name();
  if (dis.p2[dis.p1] !== '') {
    //创建ajax对象
    var xmlhttp = new XMLHttpRequest();
    //写链接
    xmlhttp.open("GET", "http://127.0.0.1/hui/php/shoppingCart.php?ask=" + dis.p2[dis.p1], false);
    //请求头
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
    //POST的传参
    xmlhttp.send();
    //处理回参
    xmlhttp.addEventListener("readystatechange", data);
    function data() {
      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        try {
          //有购物车商品并成功返回商品参数        				
          var datal = JSON.parse(xmlhttp.responseText);
          // console.log(datal);
          return datal;
        } catch {
          //没添加购物车商品
          var datal = [];
          return datal;
        }
      }
    }
    var datal_data = data();
    return datal_data;
    // console.log(data());
  } else {
    alert('请先登录');
  }
}
//接收ajax（）的return
var datal_data_data = ajax();// console.log(datal_data_data);



//禁止右击菜单事件
window.oncontextmenu = function () { return false; }
// 禁止任何键盘敲击事件（防止F12和shift+ctrl+i调起开发者工具） 
window.onkeydown = window.onkeyup = window.onkeypress = function (event) {
  console.log('键盘事件', event)
  if (event.code == 'F12') {
    window.event.returnValue = false;
    return false;
  }
  if ((event.ctrlKey) && (event.shiftKey) && (event.keyCode == 73)) {
    return false;
  }
};
//禁止页面复制
window.onload = function () {
  document.body.oncopy = function () {
    return false;
  };
  document.body.onpaste = function () {
    return false;
  };
  //当选中页面中的任何对象时触发onselectstart事件
  //对FF浏览器不起作用，但是QQ浏览器起作用
  document.body.onselectstart = function () {
    return false;
  };
  //禁止元素被选中
  if (typeof (document.onselectstart) != 'undefined') {
    // IE chrome下禁止元素被选中       
    document.onselectstart = function () {
      return false;
    }
  } else {
    // firefox下禁止元素被选中的变通办法       
    document.write('<style type="text/css">body { -moz-user-select: none; }</style>');
  }
}

//联系我们
let we = document.querySelector(".we");
we.addEventListener("click", function () {
  if ((document.querySelector(".qq1") == null) == true) {
    let bei = document.querySelector(".we>li");
    let qq1 = document.createElement("img");
    qq1.setAttribute('src', "../images/index/客服-联系我们.jpg");
    qq1.style.width = "90px";
    qq1.style.height = "90px";
    qq1.classList.add('qq1');
    we.insertBefore(qq1, bei);
    console.log(2);
  } else {
    let qq1 = document.querySelector(".qq1");
    we.removeChild(we.children[0]);
    console.log(3);
  }
});
//图标显示
function sCroll() {
  var viewheight = window.innerHeight;
  var scroll = window.pageYOffset;
  var retop = document.querySelector(".retop");
  if (scroll >= (viewheight / 2)) {
    retop.style.display = "block";
  } else {
    retop.style.display = "none";
  };
  console.log(1);
};
setInterval("sCroll()", 500);
//回到顶部
let retop = document.querySelector(".retop");
retop.addEventListener("click", function () {
  scroll(0, 0);
})
//登录注册转跳
let login = document.querySelector(".login");
login.addEventListener("click", function () {
  window.location.href = "login.html";
  console.log(5);
});
//购物车导航
let seachCart = document.querySelector(".seachCart");
seachCart.addEventListener("click", function (e, dis) {
  for (let i = 0; i < seachCart.children.length; i++) {
    try {
      if (seachCart.children[i].firstChild.textContent == e.target.textContent) {
        if (i <= 4) {
          var dis = new parameter_name();
          if (dis.p1 !== '') {
            window.location.href = "shoppingCart.html?name=" + dis.p2[dis.p1];
          } else {
            alert("请先登录");
          }
        } else {
          if (i == 5) {
            var dis = new parameter_name();
            if (dis.p1 !== '') {
              window.location.href = "seller_center.html?name=" + dis.p2[dis.p1];
            } else {
              alert("请先登录");
            }
          } else {
            document.write("<img src='../images/index/客服-联系我们.jpg' style='width:300px;height:300px;margin: 0 auto;'><p style='font-size: 50px;margin: 0 auto;'>QQ号:3310788598</p>")
          }
        }
      }
    } catch (error) {
      if (seachCart.children[i].firstElementChild.textContent == e.target.textContent) {
        if (i <= 4) {
          var dis = new parameter_name();
          if (dis.p1 !== '') {
            window.location.href = "shoppingCart.html?name=" + dis.p2[dis.p1];
          } else {
            alert("请先登录");
          }
        } else {
          if (i == 5) {
            var dis = new parameter_name();
            if (dis.p1 !== '') {
              window.location.href = "seller_center.html?name=" + dis.p2[dis.p1];
            } else {
              alert("请先登录");
            }
          } else {
            document.write("<img src='../images/index/客服-联系我们.jpg' style='width:300px;height:300px;margin: 0 auto;'><p style='font-size: 50px;margin: 0 auto;'>QQ号:3310788598</p>")
          }
        }
      }
    }
  }
});

//结算条
let sum = document.querySelector(".sum");
let allCheck = document.querySelector(".allCheck");
let allCheck_box = document.querySelector(".allCheck_box");
allCheck.addEventListener("click", function () {
  let radio = document.querySelectorAll("input[type='radio']");
  if (this.c == 1) {
    this.c = 0;
    this.checked = 0;
    for (let i = 0; i < radio.length; i++) {
      radio[i].checked = false;
    }
  } else {
    this.c = 1;
    this.checked = 1;
    for (let i = 0; i < radio.length; i++) {
      radio[i].checked = true;
    }
  }
});

//创建购物车商品
window.onload = function create_li() {
  for (let i = 0; i < datal_data_data.length; i++) {
    let li = document.createElement("li");
    li.innerHTML += '<input type="radio" class="input_radio" checked name="radio' + [i] + '" ><div class="remove">.</div><img src="' + datal_data_data[i].src + '" class="picture"><h2 class="shopName">' +datal_data_data[i].shop_name+'&nbsp;&nbsp;&nbsp;</h2><p class="discribe">'+ datal_data_data[i].discribe + '</p><h1 class="price">' + datal_data_data[i].nowprice + '</h1><dl class="count' + [i] + ' count"><dt class="subtract">-</dt><dt class="num' + [i] + ' num">1</dt><dt class="plus">+</dt></dl>';
    document.querySelector(".goodsBox").appendChild(li);
  }
}
//创建每条上商品总价格
var row_price = [];
//创建商品后功能
let goodsBox = document.querySelector(".goodsBox");
goodsBox.addEventListener("click", function (e) {
  //单选点击与取消
  if (e.target.nodeName.toUpperCase() == 'INPUT') {
    // console.log(e.target.checked);
    let click_radio_className = e.target.className;
    let input_radio_realtime = document.getElementsByClassName(click_radio_className);
    if (input_radio_realtime.checked == true) {
      input_radio_realtime.c = false;
      input_radio_realtime.checked = false;
      // console.log(e.target.checked+"1");
      input_radio_realtime.checked = false;
      // console.log( document.getElementsByClassName(click_radio_className).checked);
      return e.target.checked = false;
    } else {
      input_radio_realtime.c = true;
      input_radio_realtime.checked = true;
      // console.log(e.target.checked);
      input_radio_realtime.checked = true;
      return true;
    }
  }
  //删除商品
  if (e.target.className == 'remove') {
    console.log(e.target);
    var key = confirm("残忍删除宝贝？");
    if (key == true) {
      var dis = new parameter_name();
      var hangshu = e.target.previousSibling.name.match(/[0-9]/ig);
      console.log(hangshu);
      //创建ajax对象
      var xmlhttp = new XMLHttpRequest();
      //写链接
      xmlhttp.open("GET", "http://127.0.0.1/hui/php/shoppingCart_delete.php?name=" + dis.p2[dis.p1]+"&hang="+hangshu);
      //请求头
      xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
      //POST的传参
      xmlhttp.send();
      //成功后刷新页面
      xmlhttp.addEventListener("readystatechange", function(){
        location.reload();
      });
    }
  }
  //加减操作
  if (e.target.nodeName.toUpperCase() == 'DL' || e.target.parentElement.nodeName.toUpperCase() == 'DL') {
    let click_count_className = e.target.className;
    let price = Number(document.querySelector(".price").textContent);
    // console.log(e.target.nextSibling);
    if (click_count_className == 'subtract') {
      let num = e.target.nextSibling;
      let x = Number(num.textContent);
      //console.log(num);
      if (x > 1) {
        num.innerHTML = (x - 1);//console.log();
        row_price[num.className.replace(/[^0-9]/ig, "")] = price * (x - 1);
      } else {
        row_price[num.className.replace(/[^0-9]/ig, "")] = price;
      }
    }
    if (click_count_className == 'plus') {
      let num = e.target.previousSibling;
      let x = Number(num.textContent);
      num.innerHTML = (x + 1);
      row_price[num.className.replace(/[^0-9]/ig, "")] = price * (x + 1);
    }
  }
  //总额sumPrice显示
  let sumPrice = document.querySelector(".sumPrice");
  let sumprice = [''];
  let input_radio = document.querySelectorAll(".input_radio");
  for (let i = 0; i < row_price.length; i++) {
    if (input_radio[i].checked == true) {
      sumprice[0] = Number(sumprice[0]) + Number(row_price[i]);
    }
  }
  sumPrice.innerHTML = sumprice[0];
})

//结算
let wind_up = document.querySelector(".wind_up");
wind_up.addEventListener("click", function () {
  let sumPrice_text = document.querySelector(".sumPrice").textContent;
  if (sumPrice_text == '总额') {
    alert("请选择购买商品");
  } else {
    alert("您将支付￥:" + sumPrice_text);
  }
})

//后退
let retreat = document.querySelector(".retreat");
retreat.addEventListener("click", function () {
  window.history.back();
})