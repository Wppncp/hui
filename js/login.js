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
}
setInterval("sCroll()", 500);
//回到顶部
let retop = document.querySelector(".retop");
retop.addEventListener("click", function () {
    scroll(0, 0);
});
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

//密码和短信登录及其表单切换
let pas = document.querySelector(".pas");
let note = document.querySelector(".note");
pas.addEventListener("click", changePas);
note.addEventListener("click", changeNote);
let pasForm = document.querySelector(".pasForm");
let noteForm = document.querySelector(".noteForm");
function changePas() {
    if ((pas.style.borderBottom) == '' && (note.style.borderBottom) !== '') {
        note.style.borderBottom = '';
        pas.style.borderBottom = "2px solid black";
        pasForm.style.display = "block";
        noteForm.style.display = "none";
    }
};
function changeNote() {
    if ((note.style.borderBottom) == '' && (pas.style.borderBottom) !== '') {
        pas.style.borderBottom = '';
        note.style.borderBottom = "2px solid black";
        noteForm.style.display = "block";
        pasForm.style.display = "none";
    }
};
//短信登录号码尾数菜单
let tion = document.querySelector(".tion");
let select = document.querySelector(".select");
tion.addEventListener("click", function () {
    if (select.style.display !== 'none') {
        select.style.display = 'none';
    } else {
        select.style.display = 'block';
    }
});
select.addEventListener("click", function (e) {
    let tionSpan = document.querySelector(".tion>span");
    console.log(e.target.textContent);
    let targe = e.target.textContent;
    let x = /[1-9]\d*/;
    console.log(targe.match(x));
    tionSpan.innerHTML = "\+" + targe.match(x);
});
//随机背景
window.addEventListener('load', function () {
    let sectionBackground = document.querySelector("section");
    let percentMin = 1 / 3;
    let percentMid = 2 / 3;
    if (Math.random() <= percentMin) {
        sectionBackground.style.background = "url(../images/login/sectionBackgroud-1.jpg) no-repeat";
        sectionBackground.style.backgroundSize = "100% 100%";
    } else {
        if (Math.random() > percentMin && Math.random() <= percentMid) {
            sectionBackground.style.background = "url(../images/login/sectionBackgroud-2.jpg) no-repeat";
            sectionBackground.style.backgroundSize = "100% 100%";
        } else {
            sectionBackground.style.background = "url(../images/login/sectionBackgroud-3.jpg) no-repeat";
            sectionBackground.style.backgroundSize = "100% 100%";
        }
    }
});
//转跳注册
let register = document.querySelector(".register");
register.addEventListener("click", function () {
    window.location.href = "register.html";
    console.log(5);
});
let register_2 = document.querySelector(".register_2");
register_2.addEventListener("click", function () {
    window.location.href = "register.html";
    console.log(5);
});

