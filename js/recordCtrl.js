/**
 * Created by zhangjinjin on 2018/9/11.
 */


$(".recordCtro").on("click",".playS,.playM",function(event){
    Record_FSCommand('RECORD');
    sRecordState='Recording';
    setControlPanelStatus(true, true, false, false);
  });
$(".stopCtro").on("click",".stopS,.stopM",function(event){
    Record_FSCommand('STOP');

    sRecordState='noRecording';
    setControlPanelStatus(true, false, true, false);
});
document.body.addEventListener('touchstart', function(){ });

var getSentenceNew=function(){
    //sContentText="";
    //sContentText=sContentText;
    console.log("getSentenceNew==",sContentText);
    return sContentText;
};

var scoreArr=[],minScore=60,nClicked=1;
var ScoreCompleted=function(score){

    scoreArr.push(score);
    console.log(scoreArr);
    console.log("hhhhhhh55555-"+sContentText,score);
    if(scoreArr.length<3){
        if(score>=minScore){
			showControlPanel(false,false,true,false);
            setControlPanelStatus(false, false, false, false);
			window.CanSubmit=true;
			Submitdata();
		    setTimeout(function(){
				if((FORMATID=="SA2")||(FORMATID=="SA3")){
					 window.game.dataInfor();
				}else{
                    playStyle(0);
				}
               
            },2000);

        }else{
            setControlPanelStatus(true, false, true, false);
            alert('Try again and see if you can score higher');

        }
    }else if(scoreArr.length==3){
		showControlPanel(false,false,true,false);
		setControlPanelStatus(false, false, false, false);
		window.CanSubmit=true;
		Submitdata();
        setTimeout(function(){
			if((FORMATID=="SA2")||(FORMATID=="SA3")){
				window.game.dataInfor();
			}else{
                playStyle(0);
			}
        },2000);

    }
};


//submit record
function Submitdata() {
    var sRecordFile, sContentID, sContentTextIn, sFileName;
    nClicked=scoreArr.indexOf(Math.max.apply(Math, scoreArr))+1;
	console.log('scoreArrmaxindex----'+nClicked)
	console.log('scoreArr----'+ scoreArr);

    sRecordFile = SoundSavePath + '' + nCurrentPlay + '' + "_" + '' + nClicked + '' + ".wav";
    sFileName = sChapterID + '' + sUnitID + '' + FORMATID + '' + "_" + '' + nCurrentPlay + '' + "_" + '' + Right("00" + '' +  month(Date()), 2) + '' + Right("00" + '' + Day(Date()), 2);
    if ( SubmitRecordSound(sCenterID, sStudentID, sFileName, sRecordFile) == false) {
        setButtons(true, true, true, false, true, true);
        return ;
    }
    sContentID="";
    sContentTextIn=sContentText;
    if ( SubmitRecordData(sContentID, sContentTextIn, sFileName) == false) {
        setButtons(true, true, true, false, true, true);
        return ;
    }
    sSubmitFlag = "Y";
    if (gaussianRound(sCurrFormatSN) >= gaussianRound(nMaxFormatSN) && nCurrentPlay > nMaxPlay) {
        writeRecoverInfo(sCenterID, sStudentID, sCurrFormatSN, nCurrentPlay);
        nMaxPlay = nCurrentPlay;
    }
    for (i = 0; i <= tblRecord.rows[0].cells.length - 1; i++) {
        if (tblRecord.rows[1].cells[i].className == "tdNum") {
            tblRecord.rows[1].cells[i].className = "tdNum_D";
        }
    }
    tblRecord.rows[1].cells[nClicked].className = "tdNum";
    setButtons(true, true, true, "", true, true);
    PopMessage( aMsg[2]);
}
/*
*----?剧ず??涓?????
*/
function showControlPanelHtml(sRecord,sStop,sReplay,sForward){
    var s = "";
    var h = "none";
    if (sRecord !== "") {
        if (sRecord) {
            $('.recordCtro').css('display',s);
            $('.recordCtroTxt').css('display',s);
        } else {
            $('.recordCtro').css('display',h);
            $('.recordCtroTxt').css('display',h);
        }
    }
    if (sStop !== "") {
        if (sStop) {
            $('.stopCtro').css('display',s);
            $('.stopCtroTxt').css('display',s);
        } else {
            $('.stopCtro').css('display',h);
            $('.stopCtroTxt').css('display',h);
        }
    }
    if (sReplay !== "") {
        if (sReplay) {
            $('.listenCtro').css('display',s);
            $('.listenCtroTxt').css('display',s);
        } else {
            $('.listenCtro').css('display',h);
            $('.listenCtroTxt').css('display',h);
        }
    }
    if (sForward !== "") {
        if (sForward) {
            $('.nextCtro').css('display',s);
            $('.nextCtroTxt').css('display',s);
        } else {
            $('.nextCtro').css('display',h);
            $('.nextCtroTxt').css('display',h);
        }
    }
}


/*
* 璁剧疆?????舵??
* */
function setControlPanelStatus(sRecord, sStop, sReplay,sForward){
    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
        if (sRecord !== "") {
            if (sRecord) {
                $('.recordCtro>div').removeClass().addClass('playM');
                if (sRecordState == "Recording") {
                    $('.recordCtro>div').removeClass().addClass('recording');
                }
            } else {
                $('.recordCtro>div').removeClass().addClass('playH');
            }
        }
        if (sStop !== "") {
            if (sStop) {
                $('.stopCtro>div').removeClass().addClass('stopM');
            } else {
                $('.stopCtro>div').removeClass().addClass('stopH');
            }
        }
        if (sReplay !== "") {
            if (sReplay) {
                $('.listenCtro>div').removeClass().addClass('listenM');
            } else {
                $('.listenCtro>div').removeClass().addClass('listenH');
            }
        }

        if (sForward !== "") {
            if (sForward) {
                $('.nextCtro>div').removeClass().addClass('nextM');
            } else {
                $('.nextCtro>div').removeClass().addClass('nextH');
            }
        }
    }else{
        if (sRecord !== "") {
            if (sRecord) {
                $('.recordCtro>div').removeClass().addClass('playS');
                if (sRecordState == "Recording") {
                    $('.recordCtro>div').removeClass().addClass('recording');
                }
            } else {
                $('.recordCtro>div').removeClass().addClass('playH');
            }
        }
        if (sStop !== "") {
            if (sStop) {
                $('.stopCtro>div').removeClass().addClass('stopS');
            } else {
                $('.stopCtro>div').removeClass().addClass('stopH');
            }
        }
        if (sReplay !== "") {
            if (sReplay) {
                $('.listenCtro>div').removeClass().addClass('listenS');
            } else {
                $('.listenCtro>div').removeClass().addClass('listenH');
            }
        }

        if (sForward !== "") {
            if (sForward) {
                $('.nextCtro>div').removeClass().addClass('nextS');
            } else {
                $('.nextCtro>div').removeClass().addClass('nextH');
            }
        }


    }


}
