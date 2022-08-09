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

function sjyz(fom) {
    if (fom.name.value == '') {
        alert("请输入商品名称");
        fom.name.select();
        return false;
    }
    if (fom.code.value == '') {
        alert("请输入商品编号");
        fom.code.select();
        return false;
    }
    if (fom.zz.value == '') {
        alert("请输入法定代表");
        fom.zz.select();
        return false;
    }
    if (fom.cbs.value == '') {
        alert("请输入发布商铺");
        fom.cbs.select();
        return false;
    }
    if (fom.jg.value == '') {
        alert("请输入商品价格");
        fom.jg.select();
        return false;
    }
    if (fom.zk.value == '') {
        alert("请输入折扣价格");
        fom.zk.select();
        return false;
    }
    if (fom.file.value == '') {
        alert("请输入图片");
        fom.tp.select();
        return false;
    }
    if (fom.jj.textContent == '') {
        alert("请输入简介");
        fom.jj.select();
        return false;
    }
}

//填写提交表单地址
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
                //loginer.innerHTML = parameter_array[parameter_j];
                // console.log(parameter_array[parameter_j]);
                // console.log(parameter_array);
                return { p1: parameter_j, p2: parameter_array };
            }
        }
    }
    return { p1: '', p2: parameter_array };
}
parameter_name();
var form = document.querySelector("form");
var dis = new parameter_name();
form.setAttribute("action", "http://127.0.0.1/hui/php/seller_center.php?name=" + dis.p2[dis.p1]);


//ajax请求编号参数
window.addEventListener("load", ajax);
    //拿到商品类型
let lx = document.querySelector('.lx');
    //当商品类型改变时改变编号
lx.addEventListener('change',debounce(ajax,700));
function ajax() {
    //创建ajax对象
    var xmlhttp = new XMLHttpRequest();
    //写链接
    xmlhttp.open("GET", "http://127.0.0.1/hui/php/seller_center_code.php?dis="+lx.value,true);
    //请求头
    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
    //POST的传参
    xmlhttp.send();
    //处理回参
    xmlhttp.addEventListener("readystatechange", data);
    function data() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            // console.log(xmlhttp.response);
            var maxcode = Number(xmlhttp.response)+1;
            document.getElementById("code").value = maxcode;
        } 
    }
}

//防抖函数封装(callback回调函数，delay(number)延时时间，immediately(boolean)是否立即执行)
function debounce(func,wait,immediate) {
  let timer;

  return function () {
      let context = this;
      let args = arguments;

      if (timer) clearTimeout(timer);
      if (immediate) {
          var callNow = !timer;
          timer = setTimeout(() => {
              timer = null;
          }, wait)
          if (callNow) func.apply(context, args)
      } else {
          timer = setTimeout(function(){
              func.apply(context, args)
          }, wait);
      }
  }
}

//后退
let retreat = document.querySelector(".retreat");
retreat.addEventListener("click", function () {
  window.history.back();
})

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
    // var loginer = document.querySelector(".loginaer>.login>ol");
    //获取用户名字
    for (var i = 0; i < parameter_array.length; i++) {
      if (parameter_array[i] == 'name') {
        var parameter_j = i + 1;
        // console.log(parameter_j);
        // loginer.innerHTML = parameter_array[parameter_j];
        //为搜索框的form能传递用户名写用户名参数
        // document.querySelector(".seach_name").value=parameter_array[parameter_j];
        // console.log(parameter_array[parameter_j]);
        // console.log(parameter_array);
        return { p1: parameter_j, p2: parameter_array };
      }
    }
  }
  return { p1: '', p2: parameter_array };
}

//跳转商品管理
{
    let urlParam = new parameter_name();
    let addshop =document.querySelector(".addShop");
    addshop.addEventListener("click",()=>{
        window.location.href="http://127.0.0.1/hui/HTML/seller_center_mange.php?name="+urlParam.p2[urlParam.p1];
    })
}