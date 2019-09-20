/**
 * Created by zhangjinjin on 2018/ 2 /5.
 */
/*该js适用于教材预览*/

//---------------------word and picture date----------

function reArr(arr) {
    var res = [];
    for (var i = 0, len = arr.length; i < len; i++) {
        var j = Math.floor(Math.random() * arr.length);
        res[i] = arr[j];
        arr.splice(j, 1);
    }
    return res
}

//----------------------soundjs声音播放
function playSound(id, loop) {
    return createjs.Sound.play(id, createjs.Sound.INTERRUPT_EARLY, 0, 0, loop);
}



/*
* game over
* */
var wrongAnswers=[];


function gameOver(){
    var rights=0;
    var spendTime=gameInfo.time-useTime;
	var GameOneWordTime=countGameTotalTime()/RightWords.length;
    if(arg!=""){
        arg=arg.replace("|",spendTime+"@");
    }else{
        arg=argInit
    }
    $("#spendTime").text(spendTime+"s");
    $("#wordList div").remove();
    $("#EndDiv").css("display","block");
    $("#bgDivBtns").hide();
    for(var i=0;i<testWords.length;i++) {
        var div=document.createElement("div");
        var span1=document.createElement("span");
        var span2=document.createElement("span");
        $(span1).text(testWords[i].Word);
        if(testWords[i].Right=="true") {
            $(span2).text("√");
            rights++;
        }else{
			wrongAnswers.push(testWords[i])
            $(span2).text("×");
        }
        $(span2).css({"float":"right","margin-right":"25px"});
        $("#wordList").append(div);
        $(div).append(span1);
        $(div).append(span2);
    }
	$("#score").text(Math.floor(rights/testWords.length*100));
	rightAnswers=wrongAnswers.slice();
	testWords=wrongAnswers.slice();
	GameTotalTime=Math.ceil(GameOneWordTime*wrongAnswers.length);
	wrongAnswers=[];
	
	if(rightAnswers.length==0){
		$('#replay').css('display','none');
		$('#exit').css('display','block');
	}else{
		$('#exit').css('display','none');
		$('#replay').css('display','block');
	}
   
   try{submitExer(wordJson,arg);}catch(ee){alert('你的网络不畅哦，请稍后再试')}
   
}
function scrollList(btn) {
    var olenSpare=$('#wordList').find('div').length;
    if(olenSpare>7){
        if($(btn).hasClass("down")){
            if(parseFloat($("#wordList").css("bottom"))<(olenSpare-7)*41-20.5){
                $("#wordList").css("top",parseFloat($("#wordList").css("top"))-20.5);
                $("#wordList").css("bottom",parseFloat($("#wordList").css("bottom"))+20.5);
            }

        }else if(parseFloat($("#wordList").css("top"))<0){
            $("#wordList").css("top",parseFloat($("#wordList").css("top"))+20.5);
            $("#wordList").css("bottom",parseFloat($("#wordList").css("bottom"))-20.5);

        }
    }else{
		$("#wordList").css("top","0")
		$("#wordList").css("bottom","0")
	}
}

/*
 *----------submit
 * */
var bDataSend;
bDataSend = false;
function submitExer(json,arg){
    if (bDataSend == false) {
        GetSubmitData(sCurrFormatSN + '' + ":" + '' + arg);
        bDataSend = true;
    }
}

/*
 *----------get soundurl
 * */

  function getSoundPath(id,flag) {
    var path_url = "";
    if(flag == 'quiz1'){
      path_url = subcenter_url + resource_path + id.substr(0, 1) + "/" + (Math.floor(parseInt(id.substr(1), 36) / 1000) + 1) + "/" + id;
    }else if(flag == '2'){
      path_url =sCenterWeb+"/SYSTEM/MATERIAL(ENGLISH)/"+ "MP3/" + (Math.floor(parseInt(id.substr(1), 36) / 1000) + 1) + "/" + id;
    }
    return path_url;
  }
  function getStr(string,str){
    if(string.indexOf(str)>=0){
    var str_before = string.split(str)[0];
    var str_after = string.split(str)[1];
    newStr= str_before+str_after
    }else{
    newStr=string
    }
    return newStr
  }

/*
 *----------get url parameter
 * */
function getQueryString(name) { 
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
        var r = window.location.search.substr(1).match(reg); 
        if (r != null) return unescape(r[2]); 
        return null; 
    } 
	
/*
 *----------student grade 
 * */
	
function gradeTime(EducationID){
    switch(EducationID){
        case "A":
        case "B":
        case "C":
            return 0;
            break;
        case "D":
            return 1;
            break;
        case "E":
            return 2;
            break;
        case "F":
            return 3;
            break;
        case "G":
            return 4;
            break;
        case "H":
            return 5;
            break;
        case "I":
            return 6;
            break;
        default:
            return 7;
    }
}
/*
 *----------game totalTime 
 * */
  function countGameTotalTime(){
    var EducationID=sEduID,EducationName=sEduName,EducationNum,totalTime;

    if(!EducationID){
      EducationNum= gradeTime('H');
    }else{
      EducationNum= gradeTime(EducationID);

    }
    if(EducationNum>=0&&EducationNum<=2){
      totalTime=80
    }else if(EducationNum>=3&&EducationNum<=4){
      totalTime=65
    }else{
      totalTime=45
    }
    return totalTime;
  }

