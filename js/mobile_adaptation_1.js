/**
 * Created by zhangjinjin on 2018/6/22.
 */


if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {

    !(function (doc, win) {
        var docEle = doc.documentElement,
            evt = "onorientationchange" in window ? "orientationchange" : "resize",
            fn = function () {
                var width = docEle.clientWidth;
                if(width<=960){
                    width && (docEle.style.fontSize = 20 * (width / 320) + "px");
                }else{
                    width && (docEle.style.fontSize = 20 * (960 / 320) + "px");
                }
            };

        win.addEventListener(evt, fn, false);
        doc.addEventListener("DOMContentLoaded", fn, false);

    }(document, window));

    var canvas,stage,timerAudio,gambox;
    canvas=document.getElementById('mianView');
	EndDiv=document.getElementById('EndDiv');
    gambox=document.getElementsByClassName('gambox')[0];
    gambox.style.position="absolute";
    //canvas.style.position="absolute";
   

    resize();
    function resize(){
        var w=document.body.clientWidth||document.documentElement.clientWidth;
        var h=document.body.clientHeight||document.documentElement.clientHeight;//鑾峰彇娴忚鍣ㄥ彲瑙嗗尯鍩熺殑楂�
        //绛夋瘮缂╂斁骞跺眳涓樉绀�
        var scale=Math.min(w/canvas.width,h/canvas.height);
        canvas.style.width=canvas.width*scale+"px";
        canvas.style.height=canvas.height*scale+"px";
        //canvas.style.left=(w-parseInt(canvas.style.width))*0.5+"px";
        //canvas.style.top=(h-parseInt(canvas.style.height))*0.5+"px";
        gambox.style.width= canvas.style.width;
        gambox.style.height=canvas.style.height;
        gambox.style.left=(w-parseInt(canvas.style.width))*0.5+"px";
        gambox.style.top= (h-parseInt(canvas.style.height))*0.5+"px";

    }
    window.onresize=function(){
        resize()
    };
    mobileStyleInit();

}


function mobileStyleInit(){
    $(".gambox").css({

        "margin-left": 0,
        "margin-top": 0
    });
    $('#gameOver').css({
         "margin":'0 auto',
        "height": '350px',
        "width": '500px',
        "background-size": '85% 90%'
    });
    $('#exitBtns').css({
        "height": '60px'
    });
    $('.xiangshang3').css({
        "right": '60px'
    });
    $('.xiangxia5').css({
        "right": '60px'
    });
    $('#details').css({
        "color": '#fffefe'
    });
    $("body").attr({"marginwidth":"0","marginheight":"0"})

}