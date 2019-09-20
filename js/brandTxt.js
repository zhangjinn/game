/**
 * Created by zhangjinjin on 2018/9/6.
 */

(function(w){
    var ITEM_SCALE =1;	//缂╂斁姣斾緥

    var ITEM = function(x , y , lineWidth,stage){
        this.x = x+lineWidth*0.5;
        this.y = y+5;
        this.homeX=x+lineWidth*0.5;
        this.homeY=y+5;
        this.init(lineWidth,stage);
    };

    ITEM.prototype = {
        init:function(lineWidth,stage){
            this.txt = new createjs.Text("It is a watermelon.", 18 + "px Arial", '#000');

            this.txt.lineWidth=lineWidth;

            this.txt.textAlign="center";

            this.txt.setTransform(this.x, this.y);
            stage.addChild(this.txt);
            createjs.Tween.get(this.txt).to({y:(this.y-ballonPos.h)},500);
        },

        update:function(){

        },

        picsize:function(){

        }
    };

    w.createTxt = function(x , y , lineWidth, stage){
        return new ITEM(x , y , lineWidth, stage)
    };
})(window);