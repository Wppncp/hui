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


//获得用户姓名
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
var parameter_name = new parameter_name();


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

//简单封装ajax
function Ajax(method, url, postParameter) {
    return new Promise((resolve, reject) => {
      //  1.创建对象
      const xhr = new XMLHttpRequest();
      // 2.初始化设置请求方法(类型)和url
      xhr.open(method, url, true);
      // 3.发送
      xhr.send(postParameter);
      // 4.绑定事件，onreadystatechange,存储函数（或函数名）处理响应结果(每当 readyState 改变时，就会触发 onreadystatechange 事件,一共会触发 4 次,从 0 到 4)
      // readyState 属性存有 XMLHttpRequest 的状态信息
      xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
          if (xhr.status >= 200 && xhr.status < 300) {
            resolve(xhr.responseText);
          } else {
            reject(xhr.status);
          }
        }
      };
    }).then(
      (value) => {
        // console.log(JSON.parse(value));
        return value;
      },
      (reason) => {
        console.warn(reason);
      }
    );
  }

//后退
let retreat = document.querySelector(".retreat");
retreat.addEventListener("click", function () {
  window.history.back();
})

//删除发布商品
function Delete_shop(event,dis,code){
  // console.log(event.target,dis,code);
  let url = location.href+"&dis="+dis+"&code="+code;
  let delete_shop_ajax = new Ajax("GET",url);
  history.go(0);
}