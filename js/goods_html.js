window.addEventListener("load", parameter_name(),Loading());
//用户登录后，写上登录账户
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
        document.querySelector(".seach_name").value = parameter_array[parameter_j];
        // console.log(parameter_array[parameter_j]);
        // console.log(parameter_array);

        return { p1: parameter_j, p2: parameter_array };
      }
    }
  }
  return { p1: '', p2: parameter_array };
}

//禁止选中页面元素
{  //禁止右击菜单事件
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
}

//联系我们
{  let we = document.querySelector(".we");
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
}


//导航
try {
  var dis = new parameter_name();
  for (let i = 0; i < dis.p2.length; i++) {
    if (dis.p2[i] == 'dis') {
      let j = i + 1;
      var red_qury = dis.p2[j];
    }
  }
  let sectionNav = document.querySelector(".sectionNav");
  sectionNav.children[red_qury].firstChild.style.color = "rgb(216, 195, 11)";
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
} catch {
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
      return JSON.parse(value);
    },
    (reason) => {
      console.warn(reason);
    }
  );
}

//加载页面
function Loading() {
  return new Promise((resolve, reject) => {
    //获取当前点击的商品类
    var urlParameter = new parameter_name();
    //获取分页页码
    var currentPage = document.querySelector("#currentPage").value;
    // console.log(urlParameter.p2[3]==undefined);
    //发送请求以获取当前页面展示数据
    if(urlParameter.p2[3] !== undefined){ 
      let loadingAjax = new Ajax("GET","http://localhost/hui/php/goodes.php?dis=" + urlParameter.p2[3] + "&fenye=" + Number(currentPage));
      // //测试
      // let loadingAjax = new Ajax("GET","http://localhost/hui/php/goodes.php?dis=1&fenye=1");
      resolve(loadingAjax);
    }else{
      let loadingAjax = new Ajax("GET","http://localhost/hui/php/goodes.php?dis=" + urlParameter.p2[1] + "&fenye=" + Number(currentPage));
      resolve(loadingAjax);
    }
  }).then(
    (value) => {
      // console.log(value[0].src);
      innerData(value);
      // return informations;
    },
    (reason) => {
      console.warn(reason);
    }
  )
}
  function innerData(data) {
    //所有内容盒子
    let goodsContent_ul_li = document.querySelectorAll(".goodsContent>li");
    //所有内容盒子a标签
    let goodsContent_ul_li_a = document.querySelectorAll(".goodsContent>li>a");
    //所有内容盒子商品图片
    let goodsContent_ul_li_a_src = document.querySelectorAll(".goodsContent>li>a>.src");
    //所有内容盒子商品名
    let goodsContent_ul_li_a_shopName = document.querySelectorAll(".goodsContent>li>a>.shop_name");
    //所有内容盒子现价
    let goodsContent_ul_li_a_nowprice = document.querySelectorAll(".goodsContent>li>a>.price_item>.nowprice");
    //所有内容盒子旧价
    let goodsContent_ul_li_a_oldprice = document.querySelectorAll(".goodsContent>li>a>.price_item>.oldprice");
    //所有内容盒子折扣图片
    let goodsContent_ul_li_a_precent = document.querySelectorAll(".goodsContent>li>a>.price_item>.precent");

    // console.log(goodsContent_ul_li_a);
    var urlParameter = new parameter_name();//为详情页拿到name
    if (urlParameter.p1 !== '') { //若有name传name
      for (let j=0; j < data.length; j++) {
        //写上a的href
        {
          let goodsContent_ul_li_a_address = window.location.origin+"/hui/HTML/detail.php?code="+data[j].code+"&name="+urlParameter.p2[urlParameter.p1]+"&dis="+urlParameter.p2[3];
          goodsContent_ul_li_a[j].removeAttribute('href');
          goodsContent_ul_li_a[j].setAttribute('href', goodsContent_ul_li_a_address);
        }
        //写上商品图片
        {
          goodsContent_ul_li_a_src[j].removeAttribute('src');
          goodsContent_ul_li_a_src[j].setAttribute('src',data[j].src);
        }
        //写上商品名称
        {
          goodsContent_ul_li_a_shopName[j].textContent = data[j].shop_name;
        }
        //写上商品现价价
        {
          goodsContent_ul_li_a_nowprice[j].textContent = data[j].nowprice;
        }
        //写上商品旧价
        {
          goodsContent_ul_li_a_oldprice[j].textContent = data[j].oldprice;
        }
        //写上商品折扣图片
        {
          goodsContent_ul_li_a_precent[j].removeAttribute('src');
          goodsContent_ul_li_a_precent[j].setAttribute('src',data[j].precent);
        }
      }
    }else{  //若没有name省去
      for (let j=0; j < data.length; j++) {
        //写上a的href
        {
          let goodsContent_ul_li_a_address = window.location.origin+"/hui/HTML/detail.php?code="+data[j].code+"&dis="+urlParameter.p2[1];
          goodsContent_ul_li_a[j].removeAttribute('href');
          goodsContent_ul_li_a[j].setAttribute('href', goodsContent_ul_li_a_address);
        }
        //写上商品图片
        {
          goodsContent_ul_li_a_src[j].removeAttribute('src');
          goodsContent_ul_li_a_src[j].setAttribute('src',data[j].src);
        }
        //写上商品名称
        {
          goodsContent_ul_li_a_shopName[j].textContent = data[j].shop_name;
        }
        //写上商品现价价
        {
          goodsContent_ul_li_a_nowprice[j].textContent = data[j].nowprice;
        }
        //写上商品旧价
        {
          goodsContent_ul_li_a_oldprice[j].textContent = data[j].oldprice;
        }
        //写上商品折扣图片
        {
          goodsContent_ul_li_a_precent[j].removeAttribute('src');
          goodsContent_ul_li_a_precent[j].setAttribute('src',data[j].precent);
        }
      }
    }
  }


//分页
 { //上一页
  { var beforePage = document.querySelector('.beforePage');
    beforePage.addEventListener('click',debounce(prev_click,1000,false))
    function prev_click(value){
      let currentPage = document.querySelector('#currentPage');
      if(currentPage.value > 1){
        // currentPage.removeAttribute('value');
        currentPage.setAttribute('value',Number(currentPage.value)-1);
        Loading();
      }
    }
  }
  //改变分页展示
    {  function choose_page(){
        Loading();
      }
    }
  //下一页
  {
    var nextPage = document.querySelector('.nextPage');
    nextPage.addEventListener('click',debounce(next_click,1000,false))
    function next_click(value){
      let currentPage = document.querySelector('#currentPage');
      if(currentPage.value < 3){
        // currentPage.removeAttribute('value');
        currentPage.setAttribute('value',Number(currentPage.value)+1);
        Loading();
      }
    }
  }}

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

//      //加入购物车ajax请求
// 			// //创建ajax对象
// 			// var xmlhttp = new XMLHttpRequest();
// 			// //写链接
// 			// xmlhttp.open("POST","http://localhost/The_zero/goods.html",true);
// 			// //设置请求头
// 			// xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded;charset=utf-8;");
// 			// //发送请求
// 			// xmlhttp.send(json);
//       // //处理响应
// 			// xmlhttp.onreadystatechange=function(){
//       //   if (xmlhttp.readyState==4 && xmlhttp.status==200){
//       //     //成功
//       //     console.log(xmlhttp.responseText);
//       //   }else{
//       //     console.log("json.msg");
//       //   }
//       // }
//     }
//   }
// })
//获取加入购物车
// let goodsContent = document.querySelector(".goodsContent");
// goodsContent.addEventListener("click",function(e){
//   if(e.target.textContent == '现在下单'){
//     //获取价格
//     let price = e.target.previousElementSibling.previousElementSibling.lastElementChild.firstElementChild.textContent;
//     console.log(price);
//     window.confirm("你将支付"+price);
//   }else{
//     if(e.target.textContent == "加入购物车"){
//       //获取图片地址
//       let picture = e.target.previousElementSibling.firstElementChild.getAttribute("src");
//       //获取描述
//       let discribe = e.target.previousElementSibling.firstElementChild.nextElementSibling.textContent;
//       //获取价格
//       let price = e.target.previousElementSibling.lastElementChild.firstElementChild.textContent;
//       //存储加入购物车
//       class goodsObj {
//         constructor(src, discribe, price) {
//           this.src = src;
//           this.discribe = discribe;
//           this.price = price;
//         }
//       }
//       var obj = new goodsObj(picture,discribe,price);
//       console.log(obj);
//       var json = JSON.stringify(obj);
//       localStorage.setItem('key',JSON.stringify(obj)) ;
//       console.log(JSON.parse(localStorage.getItem('key')).src);
// localStorage.clear();