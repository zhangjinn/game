/**
 * Created by zhangjinjin on 2018/6/26.
 */

var urlPrefix='../../../../GAMEFILES/';
var pronunciations='cjsSound';
var GameTotalTime=countGameTotalTime();
function init() {
    //游戏页初始化
    $("#mianView").addClass("pointer");
    $("#mianView").removeClass("default");
    $("#oRecordBox").css('visibility','visible');
    choseRole()
}
// 选择角色

function choseRole() {

    var manifest=[
        {src:'images/gun.png',id:'gunImg'},
        {src:'images/zhunxin.png',id:'zhunxin'},
        {src:'images/fire1.png',id:'fire1'},
        {src:'images/fire2.png',id:'fire2'},
        {src:'images/bg.jpg',id:'bg'},
        {src:'images/tree.png',id:'tree'},
        {src:'images/replay1.png',id:'replay'},
        {src:'images/exit.png',id:'exit'},
        {src:'images/bomb.png',id:'bomb'},
        {src:'images/balloonRed.png',id:'balloonRed'},
        {src:'images/balloonGreen.png',id:'balloonGreen'},
        {src:'images/balloonBlue.png',id:'balloonBlue'},
        {src:'images/balloonYellow.png',id:'balloonYellow'},
        {src:'images/brand.png',id:'brand'},
        {src:'images/brandDrop.png',id:'brandDrop'},
        {src:'images/dove.png',id:'dove'},
        {src:'images/bullet.png',id:'bullet'},
        {src:'date/swf/gun.mp3',id:'gun'}

    ];
    for(var i=0;i<rightAnswers.length;i++){
        var oItemW={};
        var oItemS={};
        oItemW.src=getSoundPath(rightAnswers[i].WSoundID,'2')+".mp3";
        oItemS.src=getSoundPath(rightAnswers[i].SSoundID,'2')+".mp3";
        oItemW.id=rightAnswers[i].WSoundID;
        oItemS.id=rightAnswers[i].SSoundID;
        manifest.push(oItemW,oItemS)
    }
    //总的倒计时时间， allTime  80
    var game = new GameView();
    window.game=game;
    if(pronunciations=='cjsSound'){
        game.init(manifest);
    }else{
        if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
            document.getElementById("playGame").style.display="block";
            document.getElementById("startGame").onclick=function(){
                document.getElementById("playGame").style.display="none";
                game.init(manifest);
            };
        }else{
            game.init(manifest);
        }
    }

    game.event.on('gameover', function () {
        gameOver()
    });

    $("#replay").bind("click",function(){
        arg="";

        useTime=gameInfo.time;
        bDataSend = false;
        game.reStart(manifest);
        $("#EndDiv").hide();
        $("#bgDivBtns").show();
    });
}
var gameInfo={
    time:GameTotalTime
};
var useTime=gameInfo.time;
var arg="",argInit=GameTotalTime+'@';

/*
*----------encapsulation fn
* */
var srcKeyWord='',srcKeySentence='';
var sRecordState='noRecording',srcSentence='',ballonPos,doClick=false,ii=-1;
var easel, oBalloonRed ,oBalloonBlue ,oBalloonYellow ,oBalloonGreen,oBrand1,oBrand2,oBrand3,oBrand4,oTxt1,oTxt2,oTxt3,oTxt4 ;

'use strict';
(function () {
    function Event() {
        this.defineEvent = {};
    }

    Event.prototype = {
        on: function (event, cb) {
            this.register(event, cb);
        },
        dispatch: function (event, arg) {
            if (this.defineEvent[event]) {
                {
                    for (var i = 0, len = this.defineEvent[event].length; i < len; ++i) {
                        this.defineEvent[event][i](arg);
                    }
                }
            }
        },
        register: function (event, cb) {
            !this.defineEvent[event] ? (this.defineEvent[event] = [cb]) : this.defineEvent[event].push(cb);
        },
        removeEvent: function () {
            for (var i in this.defineEvent) {
                delete this.defineEvent[i];
            }
        }
    }

    function GameView(){

        easel = document.getElementById("mianView");
        this.stage = new createjs.Stage(easel);
        this.shapes = [];
        this.brandArr=[];
        this.txtArr=[];

        this.allTime = GameTotalTime; //总时长
        this.stage.enableMouseOver(10);
        createjs.Touch.enable(this.stage);
        createjs.Ticker.timingMode = createjs.Ticker.RAF;
        //自定义事件
        this.event = new Event();
        ballonPos={
            b1:{
                x:49.6,
                y:easel.height-70

            }, b2:{
                x:252.2,
                y:easel.height-130
            }, b3:{
                x:454.8,
                y:easel.height-80
            }, b4:{
                x:657.4,
                y:easel.height-120
            },
            h:420
        }
    }
    GameView.prototype = {
        //初始化
        init:function(manifest) {
            if (!easel) {
                return;
            }
            ii=-1;
            doClick=false;
            createjs.Sound.stop();
            showControlPanelHtml(false,false,true,true);
            setControlPanelStatus(false, false, false, false);
            gameInfo.time=GameTotalTime;
            arg="";
            argInit=GameTotalTime+'@';
            this.allTime = GameTotalTime;
            this.preLoad(manifest);

        },

        //事件
        bindEvent: function () {

            var that = this;
            //枪火移动
            that.stage.addEventListener('stagemousemove',stageMoveHandler);
            that.stage.addEventListener('stagemousedown',stageClickHandler);

            function stageMoveHandler(e){
                e.preventDefault();
                that.zhunxin.x= e.target.mouseX-that.zhunxin.getBounds().width*0.5;
                that.zhunxin.y= e.target.mouseY-that.zhunxin.getBounds().height*0.5;
                that.gun.x=e.target.mouseX-10;
                that.gun.x=(easel.height-that.zhunxin.y-180)*Math.tan(Math.PI/180*10)+that.zhunxin.x;
            }
            function stageClickHandler(e){

                if(!doClick){
                    return;
                }
                e.preventDefault();

                if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
                    stageMoveHandler(e);
                }
                playSound('gun', 0);
                createjs.Tween.removeTweens(that.fire1);
                createjs.Tween.removeTweens(that.fire2);
                createjs.Tween.get(that.fire1,{}).to({x:(easel.height-that.zhunxin.y-180)*Math.tan(Math.PI/180*10)+ that.zhunxin.x-8,visible:true},10,createjs.Ease.linear).wait(10).to({visible:false},10,createjs.Ease.linear).call(handleCompleteFireS);
            }
            function handleCompleteFireS(){
                createjs.Tween.get(that.fire2,{}).to({x:(easel.height-that.zhunxin.y-180)*Math.tan(Math.PI/180*10)+ that.zhunxin.x-8,visible:true},10,createjs.Ease.linear).wait(10).to({visible:false},10,createjs.Ease.linear);
            }


            //射击目标
            var l = that.shapes.length;
            for (var i = 0; i < l; i++) {
                var  shape = that.shapes[i].shape;
                var  brand = that.brandArr[i].shape;
                shape.key=i;
                brand.key=i;
                (function (num){
                    shape.addEventListener("mousedown",function(e){

                        if(!doClick){
                            return;
                        }
                        doClick=false;
                        setControlPanelStatus(false, false, false, false);
                        that.startShoot(num,e);

                    });
                    brand.addEventListener("mousedown",function(e){

                        if(!doClick){
                            return;
                        }
                        doClick=false;
                        setControlPanelStatus(false, false, false, false);
                        that.resetBullet(num,e);

                    });
                })(i);
            }


        },

        //文件预加载
        preLoad: function (manifest) {
            var that=this;
            var queue = new createjs.LoadQueue(false);
            queue.installPlugin(createjs.Sound);
            queue.on('complete', handleComplete, this);
            queue.on("error", loadError);
            queue.loadManifest(manifest,true,urlPrefix);

            //加载完成
            function handleComplete() {

              var  bg=queue.getResult('bg'),
                tree=queue.getResult('tree'),
                gun=queue.getResult('gunImg'),
                zhunxin=queue.getResult('zhunxin'),
                fire1=queue.getResult('fire1'),
                fire2=queue.getResult('fire2'),
                bomb=queue.getResult('bomb'),
                balloonRed=queue.getResult('balloonRed'),
                balloonGreen=queue.getResult('balloonGreen'),
                balloonBlue=queue.getResult('balloonBlue'),
                balloonYellow=queue.getResult('balloonYellow'),
                brand=queue.getResult('brand'),
                brandDrop=queue.getResult('brandDrop'),
                dove=queue.getResult('dove'),
                bullet=queue.getResult('bullet');

                this.drawBg(bg);
                this.showTimeText();
                this.drawSprite(dove);
                this.drawRole(bomb,balloonRed,balloonGreen,balloonBlue,balloonYellow,brand,brandDrop,bullet);
                this.drawTree(tree);
                this.drawGun(gun,zhunxin,fire1,fire2);

                this.dataInfor();

                this.bindEvent();
            }
            function loadError(evt){
                alert('文件加载出错！！！');
                this.destroy();
            }
        },
        //绘画背景
        drawBg: function (bg) {
            var that = this;
            this.backdrop = new createjs.Bitmap(bg);
            this.backdrop.x = 0;
            this.backdrop.y = 0;

            this.stage.addChild(that.backdrop);
            this.w = bg.width;
            this.h = bg.height;

            createjs.Ticker.addEventListener("tick", tick);
            function tick(e) {
                that.stage.update(e);
            }
            this.tick = tick;
        },
        //绘画树
        drawTree: function (tree) {

            this.tree = new createjs.Bitmap(tree);
            this.tree.x = 0;
            this.tree.y = this.h-this.tree.getBounds().height;

            this.stage.addChild(this.tree);

        },
        //绘画角色
        drawRole: function ( bomb,balloonRed,balloonGreen,balloonBlue,balloonYellow,brand,brandDrop,bullet) {
            var that = this;
            this.roleGroup = new createjs.Container();

            this.balloonDrap = new createjs.Bitmap(brandDrop);
            this.balloonDrap.x=easel.width;
            this.balloonDrap.y=easel.height;

            this.bomb = new createjs.Bitmap(bomb);
            this.bomb.x=easel.width;
            this.bomb.y=easel.height;


            this.bullet = new createjs.Bitmap(bullet);
            this.bullet.x=easel.width;
            this.bullet.y=easel.height;
            this.bullet.scaleX=0.5;
            this.bullet.scaleY=0.5;

            this.sentenceTxt = new createjs.Text("It is a watermelon.", 24 + "px Arial", '#FFF');
            this.sentenceTxt.shadow = new createjs.Shadow("#4C4C4C", 3, 3, 3);  // 创建文字阴影
            this.sentenceTxt.lineWidth=easel.width;
            this.sentenceTxt.textAlign="center";
            this.sentenceTxt.x=easel.width*0.5;
            this.sentenceTxt.y=easel.height*0.9;
            this.sentenceTxt.visible=false;

            oBalloonRed = createBalloon(ballonPos.b1.x,ballonPos.b1.y,balloonRed, this.roleGroup);//x , y , img,stage
            oBalloonBlue = createBalloon(ballonPos.b2.x,ballonPos.b2.y,balloonGreen, this.roleGroup);
            oBalloonYellow = createBalloon(ballonPos.b3.x,ballonPos.b3.y,balloonBlue, this.roleGroup);
            oBalloonGreen = createBalloon(ballonPos.b4.x,ballonPos.b4.y,balloonYellow, this.roleGroup);
            oBrand1 = createBrand(ballonPos.b1.x,(ballonPos.b1.y+oBalloonRed.picsize().h),brand, this.roleGroup);
            oBrand2 = createBrand(ballonPos.b2.x,(ballonPos.b2.y+oBalloonRed.picsize().h),brand, this.roleGroup);
            oBrand3 = createBrand(ballonPos.b3.x,(ballonPos.b3.y+oBalloonRed.picsize().h),brand, this.roleGroup);
            oBrand4 = createBrand(ballonPos.b4.x,(ballonPos.b4.y+oBalloonRed.picsize().h),brand, this.roleGroup);


            this.roleGroup.addChild(this.balloonDrap,this.bomb,this.dove, this.bullet);

            oTxt1=createTxt(ballonPos.b1.x,(ballonPos.b1.y+oBalloonRed.picsize().h+20),oBalloonRed.picsize().w, this.roleGroup);
            oTxt2=createTxt(ballonPos.b2.x,(ballonPos.b2.y+oBalloonRed.picsize().h+20),oBalloonRed.picsize().w, this.roleGroup);
            oTxt3=createTxt(ballonPos.b3.x,(ballonPos.b3.y+oBalloonRed.picsize().h+20),oBalloonRed.picsize().w, this.roleGroup);
            oTxt4=createTxt(ballonPos.b4.x,(ballonPos.b4.y+oBalloonRed.picsize().h+20),oBalloonRed.picsize().w, this.roleGroup);


            this.shapes.push(oBalloonRed,oBalloonBlue,oBalloonYellow,oBalloonGreen);
            this.brandArr.push(oBrand1,oBrand2,oBrand3,oBrand4);
            this.txtArr.push(oTxt1,oTxt2,oTxt3,oTxt4);
            this.stage.addChild(this.roleGroup);
        },

        //掉落的牌子位置--重置
        resetBallonDrop:function(num,e){
            var that=this;
            this.shapes[num].shape.visible=false;
            this.brandArr[num].shape.visible=false;

            this.sentenceTxt.text=rightAnswers[ii].Sentence;

            createjs.Tween.get(this.txtArr[num].txt).to({y:(this.h+85)},800);

            this.balloonDrap.x =  this.shapes[num].shape.x-this.shapes[num].picsize().w*0.5;
            this.balloonDrap.y=  this.shapes[num].shape.y-65;
            createjs.Tween.get( this.balloonDrap).to({y:(this.h)},800);

            this.bomb.x =  this.shapes[num].shape.x-this.shapes[num].picsize().w*0.7;
            this.bomb.y=  this.shapes[num].shape.y-this.shapes[num].picsize().h*1.3;
            createjs.Tween.get( this.bomb).to({visible:true}).to({visible:false},350);


            this.dove.x =  this.shapes[num].shape.x-this.shapes[num].picsize().w*0.2;
            this.dove.y=  this.shapes[num].shape.y-this.shapes[num].picsize().h*0.9;
            createjs.Tween.get( this.dove).wait(50).to({x:(this.dove.x-280),y:(-150)},1800).call(function(){

            });


        },
        //重置气球
        resetBalloons:function(){

            var l = this.shapes.length;
            for (var i = 0; i < l; i++) {
                this.shapes[i].shape.visible=true;
                this.brandArr[i].shape.visible=true;

                this.txtArr[i].txt.y = this.txtArr[i].homeY-ballonPos.h

            }
        },
        //重置子弹
        resetBullet:function(num,e){
            var that=this;
            this.bullet.visible=true;
            this.bullet.x = e.target.x+this.shapes[num].picsize().w*0.5-this.bullet.getBounds().width*0.5*0.5;
            this.bullet.y= e.target.y;
            createjs.Tween.get( this.bullet).wait(50).to({y:(e.target.y-80)},150).to({visible:false}).call(function(){
                that.startShoot(num,e);
            })
        },

        //绘画枪
        drawGun:function(gun,zhunxin,fire1,fire2){
            var that=this;
            this.gun=new createjs.Bitmap(gun);
            this.gun.scaleX=this.gun.scaleY=0.5;
            this.gun.x=easel.width/2;
            this.gun.y=easel.height-this.gun.getBounds().height*0.5;

            this.zhunxin=new createjs.Bitmap(zhunxin);
            this.zhunxin.x=easel.width/2-25;
            this.zhunxin.y=easel.height/2;

            this.fire1=new createjs.Bitmap(fire1);
            this.fire1.scaleX=this.fire1.scaleY=0.5;
            this.fire1.x=easel.width/2+5;
            this.fire1.y=easel.height-(this.gun.getBounds().height*0.5)-(this.fire1.getBounds().height*0.5);
            this.fire1.visible=false;

            this.fire2=new createjs.Bitmap(fire2);
            this.fire2.scaleX=this.fire2.scaleY=0.5;
            this.fire2.x=easel.width/2;
            this.fire2.y=easel.height-this.gun.getBounds().height*0.5-this.fire2.getBounds().height*0.5;
            this.fire2.visible=false;

            this.stage.addChild(that.gun);
            this.stage.addChild(that.zhunxin);
            this.stage.addChild(that.fire1);
            this.stage.addChild(that.fire2);
            this.stage.addChild(that.sentenceTxt);


        },

        //绘画声音、下一题按钮
        drawSprite:function(dove){
            var data = {
                "images":[dove],//图片路径
                "frames":{"height": 84, "width": 90, "count": 8,"regX": 0,  "regY": 0},//每帧的尺寸，count是总帧数
                "animations":{
                    "fly": [0, 7,'fly',0.6]//[开始帧，结束帧，动画完成后的动作，速度]

                }
            };
            var spriteSheet = new createjs.SpriteSheet(data);
            this.dove = new createjs.Sprite(spriteSheet);
            this.dove.x=easel.width;
            this.dove.y=easel.height;
            this.dove.gotoAndPlay("fly");

        },
        //---获取数据
        dataInfor:function(){
            var that=this;
            console.log(rightAnswers.length+'-----'+(ii+1));
            if(rightAnswers.length<=ii+1){
                if($("#EndDiv").css("display")=="block"){
                    return;
                }
                this.gameOver();
            }else{
                ii++;
                creatExerNew(ii);
                this.resetBalloons();
                doClick=false;
                setControlPanelStatus(false, false, false, false);

                oBalloonRed.shape.name= wordJson.root.Format.Group[Exers[ii][0]].Word;
                oBalloonBlue.shape.name= wordJson.root.Format.Group[Exers[ii][1]].Word;
                oBalloonYellow.shape.name= wordJson.root.Format.Group[Exers[ii][2]].Word;
                oBalloonGreen.shape.name= wordJson.root.Format.Group[Exers[ii][3]].Word;
                oBrand1.shape.name = wordJson.root.Format.Group[Exers[ii][0]].Word;
                oBrand2.shape.name = wordJson.root.Format.Group[Exers[ii][1]].Word;
                oBrand3.shape.name =wordJson.root.Format.Group[Exers[ii][2]].Word;
                oBrand4.shape.name =wordJson.root.Format.Group[Exers[ii][3]].Word;
                oTxt1.txt.text=wordJson.root.Format.Group[Exers[ii][0]].Word;
                oTxt2.txt.text=wordJson.root.Format.Group[Exers[ii][1]].Word;
                oTxt3.txt.text=wordJson.root.Format.Group[Exers[ii][2]].Word;
                oTxt4.txt.text=wordJson.root.Format.Group[Exers[ii][3]].Word;

                srcKeyWord=rightAnswers[ii].WSoundID;
                srcKeySentence=rightAnswers[ii].SSoundID;
                var oWord= playSound(srcKeyWord,0);
                oWord.on('complete',function(){
                    doClick=true;
                    setControlPanelStatus(false, false, true, true);
                });

            }
        },
        startShoot:function(num,e){
            var that=this;
            arg+="|"+rightAnswers[ii].Word+"~"+e.target.name;
            if(e.target.name==rightAnswers[ii].Word){
                rightAnswers[ii].Right="true";
                this.sentenceTxt.visible=true;

                var oSentence= playSound(srcKeySentence,0);
                oSentence.on('complete',function(){
                    that.sentenceTxt.visible=false;
                    setTimeout(function(){
                        that.dataInfor();
                    },350)

                });

                that.resetBallonDrop(num,e);

            }else{
                rightAnswers.push(rightAnswers[ii]);
                setTimeout(function(){
                    that.dataInfor();
                },350)

            }
        },

        //剩余时间
        showTimeText: function () {
            this.text = new createjs.Text("Time: ", 24 + "px Arial", '#594138');
            this.text.x = 30;
            this.text.y = 10;
            this.stage.addChild(this.text);
            //倒计时
            this.gameTime(this.allTime, this.allTime,this.text);
        },
        //倒计时, 参数总时间  time, 当前时间 nowTime
        gameTime: function (time, nowTime,text) {
            var that = this;
            if (nowTime >= 0){
                text.text="Time: "+nowTime;
                useTime=nowTime;
                --nowTime;
            } else {
                this.gameOver();
                return;
            }
            this.gametime = setTimeout(function () {
                that.gameTime(time, nowTime,text);
            }, 1000);

        },
        //销毁
        destroy: function () {
            createjs.Ticker.removeEventListener("tick", this.tick);
            //暂停倒计时
            clearTimeout(this.gametime);
            clearTimeout(this.delayPlay);
            sRecordState='noRecording';
            showControlPanelHtml(false,false,false,false);
            setControlPanelStatus(false, false, false, false);
            //---暂停事件
            this.stage.removeAllEventListeners();
            createjs.Tween.removeAllTweens();

            this.stage.update();
        },

        //暂停游戏
        pause: function () {


        },

        //重新开始
        reStart: function (manifest){
            this.destroy();
            this.stage.removeAllChildren();
            this.shapes = [];
            this.brandArr=[];
            this.txtArr=[];
            ii=-1;
            this.init(manifest);
        },
        //游戏结束
        gameOver:function(){
            this.destroy();
            this.event.dispatch("gameover");

        }
    };

    window.GameView = GameView;


    $(".listenCtro").on("click",".listenS,.listenM",function(event){
        doClick=false;
        setControlPanelStatus(false,false,false,false);

        var oWord= playSound(srcKeyWord,0);
        oWord.on('complete',function(){
            doClick=true;
            setControlPanelStatus(false, false, true, true);
        });
    });
    $(".nextCtro").on("click",".nextS,.nextM",function(event){
        doClick=false;
        setControlPanelStatus(false,false,false,false);
        rightAnswers.push(rightAnswers[ii]);
        setTimeout(function(){
            window.game.dataInfor();
        },350)

    });



})();