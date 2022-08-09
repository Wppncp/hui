//禁止右击菜单事件
window.oncontextmenu = function () { return false; }
// 禁止任何键盘敲击事件（防止F12和shift+ctrl+i调起开发者工具） 
window.onkeydown = window.onkeyup = window.onkeypress = function (event, e) {
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
  // console.log(1);
}
setInterval("sCroll()", 500);
//回到顶部
let retop = document.querySelector(".retop");
retop.addEventListener("click", function () {
  scroll(0, 0);
});
//协议点击与取消
let agreement = document.querySelector("input[type='radio']");
agreement.addEventListener("click", function () {
  if (this.c == 1) {
    this.c = 0;
    this.checked = 0;
  } else {
    this.c = 1;
  }
});
//短信登录号码尾数菜单
let select = document.querySelector("select");
select.addEventListener("click", function () {
  let targe = e.target.textContent;
  let x = /[1-9]\d*/;
  console.log(targe.match(x));
  tionSpan.innerHTML = "\+" + targe.match(x);
})

//获取验证码
var radom_code = document.querySelector(".radom_code");
var rands = [''];
var waitTime = 60;
// radom_code.onclick = function(){random(this);}
radom_code.addEventListener("click",function(){random(this)});
function random(ele) {
  if(waitTime == 0){
    ele.disabled = false;
    waitTime = 60;//恢复计时
  } else{
    ele.disabled = true;
    ele.innerHTML = waitTime + "s";
    waitTime--;
    if(waitTime == 0){
      ele.innerHTML = '获取验证码';
      waitTime = 0;
    }
    if(waitTime == 56){
      var rand = Math.round(Math.random() * (9999 - 1000)) + 1000;
      alert("验证码为：" + rand);
      rands[0] = rand;
    }
    setTimeout(function(){
      random(ele);//定时循环调用
    },1000)
  }
  if(ele.disabled == false){
    
  }
}

//填写表单非空
function errors(fom) {
  if (fom.name.value == '') {
    alert("请输入名称");
    fom.name.select();
    return false;
  }
  if (fom.password.value == '') {
    alert("请输入密码");
    fom.password.select();
    return false;
  }
  if (fom.radom.value == '') {
    alert("请输入验证码");
    fom.radom.select();
    return false;
  }
  if (Number(fom.radom.value) !== rands[0]) {
    alert("验证码错误");
    return false;
  }
}
