//用户登录后，写上登录账户
window.addEventListener("load", parameter_name);
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
///禁止页面复制
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

//导航
var dis = new parameter_name();
let sectionNav = document.querySelector(".sectionNav");
sectionNav.addEventListener("click", function (e) {
  // console.log(typeof(e.target.textContent));
  for (let i = 0; i < sectionNav.children.length; i++) {
    sectionNav.children[i].firstChild.style.color = 'black';
    e.target.style.color = "rgb(216, 195, 11)";
    sectionNav.children[0].firstChild.style.color = "#e7e7e7";
    if (sectionNav.children[i].firstChild.textContent == e.target.textContent) {
      if (dis.p1 !== '') {
        console.log(dis.p2[dis.p1]);
        if (i == 0) {
          window.location.href = "index.php?name=" + dis.p2[dis.p1];
        } else {
          window.location.href = "http://127.0.0.1/hui/HTML/goods.html?name=" + dis.p2[dis.p1] + "&dis=" + i;
        }
      } else {
        if (i == 0) {
          window.location.href = "index.php";
        } else {
          window.location.href = "http://127.0.0.1/hui/HTML/goods.html?dis=" + i;
        }
      }
    };
  };
});

//计数器
var num = document.querySelector(".num");
var subtract = document.querySelector(".subtract");
var plus = document.querySelector(".plus");
var x = num.textContent;
subtract.addEventListener("click", function () {
  if (num.textContent > 1) {
    let sum = x--;
    num.innerHTML = sum;
  }
})
plus.addEventListener("click", function () {
  let sum = x++;
  num.innerHTML = sum;
})

//购买
var buyIt = document.querySelector(".buyIt");
buyIt.onclick = function () {
  let price = document.querySelector(".nowprice").textContent;
  console.log(price);
  let sum = num.textContent * price;
  alert("你将支付" + sum);
}

//发送Ajax请求
//最终url参数
var linkPositin = { code: "", name: "",dis:"" };
//获取url参数为linkpara数组('code'and 'name' and 'dis' maybe unbalanced);
var shopCar = document.querySelector(".shopCar");
var linkpara = [];
var prim_url = location.search.substr(1).split('&');
for (let i = 0; i < prim_url.length; i++) {
  linkpara.push(prim_url[i].split('=')[0]);
  linkpara.push(prim_url[i].split('=')[1]);
}
// console.log(linkpara);
//查找code 和 name在linkpara数组中的位置
for (let i = 0; i < linkpara.length; i++) {
  if (linkpara[i] == 'code') {
    var linkpara_j = i + 1;
    linkPositin['code'] = linkpara[linkpara_j];
  }
  if (linkpara[i] == 'name') {
    var linkpara_i = i + 1;
    linkPositin['name'] = linkpara[linkpara_i];
  }
  if (linkpara[i] == 'dis') {
    var linkpara_z = i + 1;
    linkPositin['dis'] = linkpara[linkpara_z];
  }
}
shopCar.onclick = function ajax() {
  if (linkPositin['name'] == '') {
    alert("亲，请先登录吧");
  } else {
    //创建ajax对象
    var xmlhttp = new XMLHttpRequest();
    //写链接
    xmlhttp.open("GET", "http://127.0.0.1/hui/php/detail.php?code=" + linkPositin['code'] + "&name=" + linkPositin['name']+"&dis="+linkPositin['dis'], true);
    //请求头
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
    //POST的传参
    xmlhttp.send();
    //处理回参
    xmlhttp.onreadystatechange = function () {
      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        //成功        				
        // console.log(xmlhttp.responseText);
        window.alert("成功加入上高速，好物不再迷路");
      }
    }
  }
}

//登录注册转跳
let login = document.querySelector(".login");
login.addEventListener("click", function () {
  window.location.href = "login.html";
  console.log(5);
});