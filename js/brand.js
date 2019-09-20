/**
 * Created by zhangjinjin on 2018/9/6.
 */

/**
 * Created by zhangjinjin on 2018/9/6.
 */
(function(w){
    var FRAME_RATE = 1,	//绮剧伒琛ㄦ挱鏀鹃€熷害
        SPEED = 16,		//宸﹀彸鎽囨憜閫熷害
        ITEM_SCALE =1;	//缂╂斁姣斾緥

    var ITEM = function(x , y , img,stage){
        this.sigleX = img.width;
        this.sigleY = img.height;
        this.x = x;
        this.y = y;
        this.regX=0;
        this.regY=0;

        this.init(img,stage);
    };

    ITEM.prototype = {
        init:function(img,stage){

            this.shape = new createjs.Bitmap(img);
            // setTransform ( [x=0]  [y=0]  [scaleX=1]  [scaleY=1]  [rotation=0]  [skewX=0]  [skewY=0]  [regX=0]  [regY=0] )
            this.shape.setTransform(this.x, this.y, ITEM_SCALE, ITEM_SCALE,0,0,0, this.regX,this.regY);
            stage.addChild(this.shape);
            createjs.Tween.get(this.shape).to({y:(this.y-ballonPos.h)},500);
        },

        update:function(){

        },

        picsize:function(){
            return {
                w:this.sigleX*ITEM_SCALE,
                h:this.sigleY*ITEM_SCALE
            }
        }
    };

    w.createBrand = function(x , y , img, stage){
        return new ITEM(x , y , img, stage)
    };
})(window);