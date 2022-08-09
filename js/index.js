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
        //console.log(parameter_j);
        //创建cookie
        document.cookie='userName='+parameter_array[parameter_j];
        //写上用户名
        loginer.innerHTML = parameter_array[parameter_j];
        //为搜索框的form能传递用户名写用户名参数
        document.querySelector(".seach_name").value=parameter_array[parameter_j];
        //console.log(parameter_array[parameter_j]);
        //console.log(parameter_array);
        return { p1: parameter_j, p2: parameter_array };
      }
    }
  }
  return { p1: '', p2: parameter_array };
}

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

//购物车导航
let seachCart = document.querySelector(".seachCart");
seachCart.addEventListener("click", function (e, dis) {
  for (let i = 0; i < seachCart.children.length; i++) {
    try {
      if (seachCart.children[i].firstChild.textContent == e.target.textContent) {
        if (i <= 4) {
          var dis = new parameter_name();
          if ((dis.p1 !== '') && (i == 1) ) {
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
            document.write("<img src='../images/index/客服-联系我们.jpg' style='width:300px;height:300px;margin: 0 auto;'><p style='font-size: 50px;margin: 0 auto;'>QQ号:3310788598</p>");
          }
        }
      }
    } catch (error) {
      if (seachCart.children[i].firstElementChild.textContent == e.target.textContent) {
        if (i <= 4) {
          var dis = new parameter_name();
          if ((dis.p1 !== '')&&(i=1)) {
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
//swiper初始化
window.addEventListener('load', function () {
  var swiper = new Swiper('.swiper-container', {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
      delay: 4000,
      disableOnInteraction: false,
    },
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
});
//换一批转圈     
document.querySelector(".change").addEventListener("click", function () {
  let img = document.querySelector(".change>img");
  img.style.transform = "rotate(" + 180 + "deg)";
  img.style.transitionDuration = "0.3s";
  console.log(1);
});

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
      console.log(JSON.parse(value));
      return JSON.parse(value);
    },
    (reason) => {
      console.warn(reason);
    }
  );
}
