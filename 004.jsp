  
    
        


<script type="text/javascript">
var sChapterID, sUnitID, sCenterID, sStudentID, sInstructorID, sCourseType, sScheduleType, sAssignDate, sMainWeb, sCenterVR, nMultiple, sDayth, sCenterWeb,sClassID,sChapterName,sUnitName,sNeedSubmitScore;
var sEduID,sEduName,sPerformanceID;
sChapterID = "0137";
sUnitID = "01";
sCenterID = "CCC";
sStudentID = "XXX";
sInstructorID = "01";
sCourseType = "EE";
sScheduleType = "C";
sAssignDate = "2019-05-30";
sAssignID = "87203313";
sMainWeb = "https://nw.idiil.com.cn";
sCenterWeb = "https://nwsub.idiil.com.cn";
sCenterVR = "V";
nMultiple ="1";
sDayth = "1";
sClassID = "1";
sChapterName = "SW6A";
sUnitName = "1";
sNeedSubmitScore = "Y";
sEduID = "";
sEduName = "";
    sPerformanceID = "37060407";
</script>

<html>
<head>
<title>SightWords</title>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
  <link rel="stylesheet" href="../ESL_CSS.CSS">
  <link rel="stylesheet" href="../../../../GAMEFILES/css/recordCtrl.css">
  <link rel="stylesheet" href="../../../../GAMEFILES/css/main.css">
  <link rel="stylesheet" href="../../../../GAMEFILES/font/iconfont.css">
  <style>
  #gameOver {
  margin: 40px auto 0;
  }
  #wordList div {
  font-size: 18px;
  padding-left: 30px;
  }
  </style>
  <script src="../../../../GAMEFILES/font/iconfont.js"></script>


</head>
<body bgcolor="#054D94" topMargin=0 leftMargin=40 MarginWidth=40 MarginHeight=0 ontouchstart="">
  <div style="width:100%;height:100%;position:relative">
    <div class="gambox" style="width:860px;height:646px;position: absolute;left:50%;top: 50%;margin-left: -430px;margin-top: -323px; ">
      <div style="width:100%;height:100%">
        <canvas id="mianView" width="860" height="646"></canvas>
        <div id="EndDiv">
          <div id="gameOver">
            <a href="#" class="iconfont icon-xiangshang3 xiangshang3" onclick="scrollList(this)"></a>
            <a href="#" class="iconfont icon-xiangxia5 xiangxia5 down" onclick="scrollList(this)"></a>
            <div id="wordListContainer"><div id="wordList"></div></div>
          </div>
          <div id="details">
            <div><span>Time:</span>&nbsp<span id="spendTime"></span></div>
            <div><span>Score:</span>&nbsp<span id="score"></span></div>
          </div>
          <div id="exitBtns">
            <div id="replay"><img src="../../../../GAMEFILES/images/replaynew.png"/></div>
            <div id="exit" onclick="GotoNextFormat(sMainWeb, false)"><img src="../../../../GAMEFILES/images/exitnew.png"/></div>
          </div>
        </div>
      

<div id="oRecordBox">
    <div class="oRecordBox-in">
        <div class="recordBtn">
            <div style='display:none'>
                <table width="10" border="0" align="center" cellspacing="4" id=CPanel style="">
                    <tr>
                        <td height="40" width="40" ID=tdRecord1 colspan=2> <object id=Record classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 height=40 width=86 VIEWASTEXT>
                            <param name="Movie" value="../../PUBLIC/RECORD_D.SWF">
                            <param name="wmode" value="transparent">
                            <param name="Quality" value="High">
                            <param name="menu" value=0>
                        </object></td>
                        <td height="40" width="124" ID=tdRecordCard1>
                            <table width="124" border="0" height="40" id=tblRecord bgcolor="#00CCFF" Record=-1  onclick="tblRecord_onclick(event)">
                                <tr>
                                    <td class=tdArrow width="16" style="visibility:hidden"><img src="../../PUBLIC/ARROW.GIF" width="10" height="10" ></td>
                                    <td class=tdArrow width="16" style="visibility:hidden"><img src="../../PUBLIC/ARROW.GIF" width="10" height="10"></td>
                                    <td class=tdArrow width="16" style="visibility:hidden"><img src="../../PUBLIC/ARROW.GIF" width="10" height="10"></td>
                                    <td class=tdArrow width="16" style="visibility:hidden"><img src="../../PUBLIC/ARROW.GIF" width="10" height="10"></td>
                                    <td class=tdArrow width="16" style="visibility:hidden"><img src="../../PUBLIC/ARROW.GIF" width="10" height="10"></td>
                                    <td class=tdArrow width="16" style="visibility:hidden"><img src="../../PUBLIC/ARROW.GIF" width="10" height="10"></td>
                                </tr>
                                <tr>
                                    <td width="20" class=tdNum_D >1</td>
                                    <td width="20" class=tdNum_D >2</td>
                                    <td width="20" class=tdNum_D >3</td>
                                    <td width="20" class=tdNum_D >4</td>
                                    <td width="20" class=tdNum_D >5</td>
                                    <td width="20" class=tdNum_D >6</td>
                                </tr>
                            </table>
                        </td>
                        <td height="40" width="40" ID=tdSubmit1> <object id=Submit classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 height=40 width=40 VIEWASTEXT>
                            <param name="Movie" value="../../PUBLIC/SUBMIT_D.SWF">
                            <param name="WMode" value="window">
                            <param name="Quality" value="High">
                            <param name="menu" value=0>
                        </object></td>
                        <td height="40" ></td>
                        <td height="40" width="40" ID=tdReplay1> <object id=Replay classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 height=40 width=40 VIEWASTEXT>
                            <param name="Movie" value="../../PUBLIC/REPLAY_D.SWF">
                            <param name="WMode" value="window">
                            <param name="Quality" value="High">
                            <param name="menu" value=0>
                        </object></td>
                        <td height="40" width="40" ID=tdBack1> <object id=Back classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 height=40 width=40 VIEWASTEXT>
                            <param name="Movie" value="../../PUBLIC/BACK_D.SWF">
                            <param name="WMode" value="window">
                            <param name="Quality" value="High">
                            <param name="menu" value=0>
                        </object></td>
                        <td height="40" width="40" ID=tdForward1> <object id=Forward classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 height=40 width=40 VIEWASTEXT>
                            <param name="Movie" value="../../PUBLIC/FORWARD_D.SWF">
                            <param name="WMode" value="window">
                            <param name="Quality" value="High">
                            <param name="menu" value=0>
                        </object></td>
                        <td height="40" ></td>
                        <td height="40" width="40" ID=tdDict1><object id=Dict classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 height=40 width=40 VIEWASTEXT>
                            <param name="Movie" value="../../PUBLIC/CHINESE_D.SWF">
                            <param name="WMode" value="window">
                            <param name="Quality" value="High">
                            <param name="menu" value=0>
                        </object></td>
                    </tr>
                    <tr align="center" height=15 >
                        <td class=tdPrompt id=tdRecord2>录音</td>
                        <td class=tdPrompt id=tdStop2>停止</td>
                        <td class=tdPrompt id=tdRecordCard2>录音记录</td>
                        <td class=tdPrompt id=tdSubmit2>提交</td>
                        <td class=tdPrompt ></td>
                        <td class=tdPrompt id=tdReplay2>重播</td>
                        <td class=tdPrompt id=tdBack2>后退</td>
                        <td class=tdPrompt id=tdForward2>往前</td>
                        <td class=tdPrompt ></td>
                        <td class=tdPrompt id=tdDict2>中文</td>
                    </tr>
                </table>

                <audio id="bgmusic" autoplay preload  controls style="width:100px;height:20px;display:none" ></audio>

                <!--  预载入动画和声音的 flash  -->
                <OBJECT id=DownLoad classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 width=0 height=0 VIEWASTEXT>
                    <PARAM NAME="Movie" VALUE="../../PUBLIC/DOWNLOADNEW.SWF">
                    <PARAM NAME="WMode" VALUE="transparent">
                    <PARAM NAME="PLAY"  VALUE="-1">
                </OBJECT>
                <!--  新的预载入动画和声音的 flash -->
                <object id=DownLoadNew classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 width=0 height=0 VIEWASTEXT>
                    <param name="Movie" value="../../PUBLIC/DOWNLOADNEW.SWF">
                    <param name="Play" value="0">
                    <param name="Loop" value="0">
                    <param name="WMode" value="transparent">
                </object>

                <!--  用于播放声音的 flash  -->
                <OBJECT id=flsSound classid=clsid:D27CDB6E-AE6D-11CF-96B8-444553540000 width=0 height=0 VIEWASTEXT>
                    <PARAM NAME="Movie" VALUE="../../PUBLIC/SHIM.SWF">
                    <PARAM NAME="WMode" VALUE="Transparent">
                </OBJECT>

                <!-- BUTTON 中文提示 -->
                <div id=divPrompt class=tdPrompt style="position:absolute;z-index:10;visibility:hidden;width:50px" ShowPromptID=""></div>
            </div>
            <div id="ctroPanels">
                <table border="0" align="center" cellspacing="5" style="border-collapse:separate;border-spacing:4px">
                    <tbody>
                    <tr class="recordBtn_top">
                        <td class="recordCtro">
                            <div class=""></div>
                        </td>
                        <td class="stopCtro">
                            <div class=""></div>
                        </td>
                        <td class="listenCtro">
                            <div class=""></div>
                        </td>
                        <td class="nextCtro">
                            <div class=""></div>
                        </td>
                    </tr>
                    <tr class="recordBtn_bottom" align="center">
                        <td class="recordCtroTxt">录音</td>
                        <td class="stopCtroTxt">停止</td>
                        <td class="listenCtroTxt">重播</td>
                        <td class="nextCtroTxt">往前</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

      </div>

    </div>
  </div>




<script src="/closure-lib/closure/goog/base.js"></script>
<script src="/SYSTEM/ENGLISH/ESL/sha.js"></script>
 <script src="/Script/jquery-1.9.1.js"></script>
    <script src="/GAMEFILES/js/createjs-2015.11.26.min.js"></script>
    <script src="/SYSTEM/ENGLISH/ESL/preloadSound.js"></script>

    <script>
    goog.addDependency('../../third_party/closure/idiil/ui/media/SWFObject/fscommand.js', ['idiil.ui.media.SWFObject.FSCommand'], ['goog.Disposable', 'goog.dom.DomHelper']);
    goog.addDependency('../../third_party/closure/idiil/legacy/shim/FSO.js', ['idiil.legacy.shim.FSO'], []);
    </script>
    <script>
      goog.require('idiil.ui.media.SWFObject.FSCommand'); 
      goog.require('idiil.legacy.shim.FSO');
    </script>
<style>
.cursorhand * {
    cursor: pointer !important;
    cursor: hand !important;
}
</style>
<script>var alertify</script>
<script src="/SYSTEM/lib/utils/fetch@0.9.0,alertifyjs@1.5.0,es6-promise@3.0.2"></script>
<link rel="stylesheet" href="/SYSTEM/lib/utils/alertifyjs@1.5.0_bundle.css">
<style>
.alertify{top:40%}
.alertify .ajs-dialog{margin:25% auto;}
</style>




<script  type="text/javascript" src="/SYSTEM/IDIIL_Public.js" ></script>

<script type="text/javascript">
    function getHostURL() {
    var sURL= document.URL;
        tempArr = sURL.split("//");
        tempArr2 = tempArr[1].split("/");
        sURL = tempArr[0] +"//"+ tempArr2[0];
        return(sURL);
    }

//this function "escape()" can run on windows2000 version VBScript
//but can't run on windows98 version VBScript
//can run on any version of Javascript
function myEscape(sStr)
{
  return escape(sStr);
}
</script>

<script type="text/javascript">
function UploadExerData(sTableName, sCondition) {
  var sDoc, xmlhttp1, sUploadID;
  sPath = "https://nw.idiil.com.cn/system/general/interactive/instructor/";
  sDoc =createXMLDoc();
  xmlhttp1 =new XMLHttpRequest();
  sUploadID = "01_XXX_" + '' + hour(new Date()) + '' + "_" + '' + minute(new Date()) + '' + "_" + '' +second(new Date());
  
  xmlhttp1.open("GET", getHostURL()+"/SYSTEM/GENERAL/INTERACTIVE/INSTRUCTOR/GETEXERDATA_C.jsp?TableName=" + '' + sTableName + '' + "&Condition=" + '' +  myEscape(sCondition) + '' + "&UploadID=" + '' + sUploadID, false);
  xmlhttp1.send();
  sDoc.loadXML(trim(xmlhttp1.responseText)+'');
  if (sDoc.xml == "") {
    if (trim(xmlhttp1.responseText) !== "") {floatInfo.insertAdjacentHTML("beforeEnd", "获取数据失败!<BR>");}
    return ;
  }
  xmlhttp1.open("POST", sPath + '' + "uploadExerData-new.asp", false);
  xmlhttp1.send(sDoc);
  if (trim(xmlhttp1.responseText)+'' != "true" && trim(xmlhttp1.responseText)+'' != "") {
    floatInfo.insertAdjacentHTML("beforeEnd", "数据上传失败!<BR>");
    return ;
  }

  sDoc = new XMLHttpRequest();
  xmlhttp1.open("GET", getHostURL()+"/SYSTEM/GENERAL/INTERACTIVE/INSTRUCTOR/DELEXERDATA_C.jsp?TableName=" + '' + sTableName + '' + "&Condition=" + '' +  myEscape(sCondition) + '' + "&UploadID=" + '' + sUploadID, false);
  xmlhttp1.send();
  xmlhttp1 = null;
  sDoc = null;

}


function uploadInterData(sCondition) {
  sPath = "https://nw.idiil.com.cn/system/general/interactive/instructor/";
  sDoc =createXMLDoc();
  xmlhttp1 = new XMLHttpRequest();
  xmlhttp1.open("GET", getHostURL()+"/SYSTEM/GENERAL/INTERACTIVE/INSTRUCTOR/GETINTERACTIVEDATA_C.jsp?Condition=" + '' +  myEscape(sCondition), false);
  xmlhttp1.send();
  sDoc.loadXML(trim(xmlhttp1.responseText)+'');
  if (sDoc.xml === "") {
    if (trim(xmlhttp1.responseText)+'' != "") {floatInfo.insertAdjacentHTML("beforeEnd", "<br>获取互动数据失败!");}
     return ;
  }
  xmlhttp1.open("POST", sPath + '' + "uploadInteractiveData.asp", false);
  xmlhttp1.send(sDoc);
  if (trim(xmlhttp1.responseText)+'' == "") {
    xmlhttp1.open("GET", getHostURL()+"/SYSTEM/GENERAL/INTERACTIVE/INSTRUCTOR/DELDATA_C.jsp?Condition=" + '' +  myEscape(sCondition), false);
    xmlhttp1.send();
  }
  xmlhttp1 = null;
  sDoc = null;
}
</script>
<script>


var GetXMLFromSubcenter = false;  
var xmlUnitContent=createXMLDoc();
  // window["scoreContentType"]="sent";  //"word" || "sent"; || "para"
  //window["agegroup"]= 2; //1: 3~6 years old  || 2: 6 ~ 12  || 3: >12 years old
   //window["slack"]=0.5;  //[-1,1]

var UnitXMLFile, FormatXMLFile, SoundSavePath;
UnitXMLFile = "c:\\temp\\" + '' + sAssignID + '' + "-" + '' + sScheduleType + '' + "-" + '' + sDayth + '' + "-" + '' + "EnglishUnitContent.xml";
FormatXMLFile = "c:\\temp\\" + '' + sAssignID + '' + "-" + '' + sScheduleType + '' + "-" + '' + sDayth + '' + "-" + '' + "EnglishFormatContent.xml";
var MaxErrTimes = 3;
SoundSavePath = "c:\\temp\\temp\\" + '' + sAssignID + '' + "-" + '' + sScheduleType + '' + "-" + '' + sDayth + '' + "\\";

document.domain="idiil.com.cn";

window.onload= null;

$(document).ready(function(){
	//window["AudioCtrl_Init"]();
	try{
        $("#tblLogo").attr("width",$(".ESL_Content_Table").attr("width"));
    } catch(ee){}

    var strTempTitle=sCenterID+"&nbsp;&nbsp;"+sStudentID+"&nbsp;&nbsp;&nbsp;&nbsp;"+sChapterName+" : "+sUnitName+"&nbsp;&nbsp;&nbsp;&nbsp;"+sChapterName+" : "+sUnitName+"&nbsp;&nbsp;&nbsp;&nbsp;"+sPerformanceID;
    $("#spanInnerTitle").html(strTempTitle);

    $("#btnRecordTest").click(function(){
        window.open('../../Recorder-master0/index.html', 'newwindow')
    });
	
	var str1='<div id="initRecorder"  style="width: 100%;  height: 100%; top:0px; left:0px; position:fixed; z-index:99999; background-image:url(/images/bg.jpg);"  class="container-horization-vertical" >'+
        '<div  style="position: absolute;  width: 320px;  height: 60px;  text-align: center;  line-height:20px;  top: 0;  left: 0;  bottom: 0;  right: 0;  margin: auto;font-size:20px;"  class="container-horization-vertical-item"><p>请同学们准备好麦克风和耳机！！！</p><p>然后点击此处开始上课</p></div></div>'
	var objOver=$("body").append(str1);
	$("#initRecorder").click(function(){
		   window["AudioCtrl_Init"]();
		   window._onload();
		   $(this).hide();
	});
});




var fso, nIDIIL;
function NoIdle() {
  nIDIIL += 1;
}


function uploadAllExerData() {
	sUploadCondition = "CenterID='"+sCenterID+"' and StudentID='"+sStudentID+"'";
	UploadExerData("ExerciseInfo", sUploadCondition);
	UploadExerData("Performance", sUploadCondition);
	UploadExerData("ExerciseRecord", sUploadCondition);
}

function getUnitContent(sChapterID, sUnitID, sMainWeb) {
 
  var function_result = null;
  var xmldoc,
      xmlhttp = new XMLHttpRequest(),
      nErrCount = 0;
  xmldoc = createXMLDoc();

  if (!isIE()) xmldoc.load(UnitXMLFile); //hhu--
  
  if (xmldoc.xml !== "") {
    if (!(xmldoc.selectSingleNode("//root[ChapterID='" + '' + sChapterID + '' + "' and UnitID='" + '' + sUnitID + '' + "']") == null)) {
      function_result = xmldoc;
      return function_result;
    }
  }
  
  xmldoc = createXMLDoc();
  while (xmldoc.xml == "" && nErrCount < MaxErrTimes) {
	 if ( GetXMLFromSubcenter || (sChapterID >= "0183" && sChapterID <= "0400") ) {
        if((sChapterID=="0215"&&sUnitID<"28"&&sUnitID!="14"&&sUnitID!="20")){
             xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0215' + '' + "/" + '' + '0215' + '' + "_" + '' + '01' + '' + "ENGLISHUNITCONTENT.XML");

        }else if((sChapterID=="0215"&&sUnitID>="28")||(sChapterID=="0215"&&sUnitID=="14")||(sChapterID=="0215"&&sUnitID=="20")){
            xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0215' + '' + "/" + '' + '0215' + '' + "_" + '' + '02' + '' + "ENGLISHUNITCONTENT.XML");

        }else if((sChapterID=="0225"&&sUnitID<"28"&&sUnitID!="14"&&sUnitID!="20")){
            xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0225' + '' + "/" + '' + '0225' + '' + "_" + '' + '01' + '' + "ENGLISHUNITCONTENT.XML");

        }else  if((sChapterID=="0225"&&sUnitID>="28")||(sChapterID=="0225"&&sUnitID=="14")||(sChapterID=="0225"&&sUnitID=="20")){
            xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0225' + '' + "/" + '' + '0225' + '' + "_" + '' + '02' + '' + "ENGLISHUNITCONTENT.XML");

        }else if(sChapterID=="0235"){
            xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0235' + '' + "/" + '' + '0235' + '' + "_" + '' + '01' + '' + "ENGLISHUNITCONTENT.XML");

        }else{
            xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + sChapterID + '' + "/" + '' + sChapterID + '' + "_" + '' + sUnitID + '' + "ENGLISHUNITCONTENT.XML");

        }

        // xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + sChapterID + '' + "/" + '' + sChapterID + '' + "_" + '' + sUnitID + '' + "ENGLISHUNITCONTENT.XML");
	 }
	 else
	 {
       xmldoc.load(sMainWeb + '' + "/system/english/ESL/getUnitContent.asp?ChapterID=" + '' + sChapterID + '' + "&UnitID=" + '' + sUnitID);
	 }
    if (xmldoc.xml == "") {
      nErrCount += 1;
    }
  }
  if (nErrCount >= MaxErrTimes) {
  MsgBox("获取数据失败，请检查网络连线状态，退出并重新进入课堂。          ", vbInformation, " IDIIL 提示");
    return function_result;
  }
  function_result = xmldoc;
  if (!isIE()) xmldoc.save(UnitXMLFile);   //hhu---
  return function_result;
}

function writeRecoverInfo(sCenterID, sStudentID, FormatSN, GroupSN) {
   if ( isIE())
   {
      return true;
   }

  var function_result = null;
  var xmldoc, oNode, oNode1, bRecover;
  xmldoc = createXMLDoc();
  //xmldoc.async = false;
  xmldoc.load(UnitXMLFile);
  if (xmldoc.xml == "") {
    function_result = false;
    return function_result;
  }
  oNode = xmldoc.documentElement.selectSingleNode("RecoverInfo[CenterID='" + '' + sCenterID + '' + "' and StudentID='" + '' + sStudentID + '' + "']");
  if (oNode == null) {
    bRecover = false;
  } else {
    if (cdate(oNode.selectSingleNode("ClassworkDate").text) == date()) {
      bRecover = true;
    } else {
      bRecover = false;
    }
  }
  if (bRecover == false) {
    oNode1 = xmldoc.xml == '' ? null : xmldoc.selectSingleNode("RecoverInfo");
    if (!(oNode1 == null)) {
      xmldoc.documentElement.removeChild(oNode1);
    }
    oNode = xmldoc.createElement("RecoverInfo");
    xmldoc.documentElement.appendChild(oNode);
    AddNode(xmldoc, oNode, "CenterID", sCenterID);
    AddNode(xmldoc, oNode, "StudentID", sStudentID);
    AddNode(xmldoc, oNode, "ClassworkDate", String(Date()));
    AddNode(xmldoc, oNode, "FormatSN", FormatSN);
    AddNode(xmldoc, oNode, "GroupSN", GroupSN);
  } else {
    if (!(FormatSN == "1" && GroupSN == "0")) {
      if (gaussianRound(oNode.selectSingleNode("FormatSN").text) <= gaussianRound(FormatSN) && gaussianRound(oNode.selectSingleNode("GroupSN").text) <= gaussianRound(GroupSN)) {
        oNode.selectSingleNode("FormatSN").text = FormatSN;
        oNode.selectSingleNode("GroupSN").text = GroupSN;
        oNode1 = oNode.selectSingleNode("ReviewFormatSN");
        if (!(oNode1 == null)) {
          oNode.removeChild(oNode1);
        }
      }
    } else {
      oNode1 = oNode.selectSingleNode("ReviewFormatSN");
      if (!(oNode1 == null)) {
        oNode.removeChild(oNode1);
      }
    }
  }
  xmldoc.save(UnitXMLFile);
  function_result = true;
  return function_result;
}

//global variable for sending byref variables as array
var byref_tmp = [];
//  byref_tmp = [CurrFormatSN, CurrGroupSN, MaxFormatSN, MaxGroupSN];
function getRecoverInfo(CurrFormatSN, CurrGroupSN, MaxFormatSN, MaxGroupSN) {
if (!isIE())
{
    MaxFormatSN = 1;
    MaxGroupSN = 0;
    CurrFormatSN = 1;
    CurrGroupSN = 1;
    byref_tmp = [CurrFormatSN, CurrGroupSN, MaxFormatSN, MaxGroupSN];
    return ;
}


  var xmldoc, oNode, oNode1;
  xmldoc = createXMLDoc();
  //xmldoc.async = false;
  xmldoc.load(UnitXMLFile);
  oNode = xmldoc.xml == '' ? null : xmldoc.documentElement.selectSingleNode("RecoverInfo");
  if (!(oNode == null)) {
    MaxFormatSN = gaussianRound(oNode.selectSingleNode("FormatSN").text);
    oNode1 = oNode.selectSingleNode("ReviewFormatSN");
    if (oNode1 == null) {
      CurrFormatSN = MaxFormatSN;
      MaxGroupSN = gaussianRound(oNode.selectSingleNode("GroupSN").text);
      CurrGroupSN = MaxGroupSN + 1;
      if (CurrGroupSN > xmldoc.documentElement.selectSingleNode("Format[@FormatSN='" + '' + CurrFormatSN + '' + "']").childNodes.length) {
        CurrGroupSN = xmldoc.documentElement.selectSingleNode("Format[@FormatSN='" + '' + CurrFormatSN + '' + "']").childNodes.length;
      }
    } else {
      CurrFormatSN = gaussianRound(oNode1.text);
      if (CurrFormatSN < MaxFormatSN) {
        MaxGroupSN = xmldoc.documentElement.selectSingleNode("Format[@FormatSN='" + '' + oNode1.text + '' + "']").childNodes.length;
        CurrGroupSN = MaxGroupSN;
      } else {
        MaxGroupSN = gaussianRound(oNode.selectSingleNode("GroupSN").text);
        CurrGroupSN = 1;
      }
    }
  } else {
    MaxFormatSN = 1;
    MaxGroupSN = 0;
    CurrFormatSN = 1;
    CurrGroupSN = 1;
  }
  byref_tmp = [CurrFormatSN, CurrGroupSN, MaxFormatSN, MaxGroupSN];
}

function getFormatContent(sChapterID, sUnitID, sFormatID, sFormatSN, sGetContentFormatID, sMainWeb, vSendDoc) {
  var function_result = null;
  var xmldoc,
      oNode,
      xmlhttp,
      rDoc = createXMLDoc(),
      nErrCount = 0,
      bSucc = false;
  xmldoc = createXMLDoc();
  rDoc = createXMLDoc();
  xmldoc.async = false;
  if (!isIE()) xmldoc.load(FormatXMLFile);  //hhu--
  if (xmldoc.xml !== "") {
    oNode = xmldoc.selectSingleNode("//root[@ChapterID='" + '' + sChapterID + '' + "' and @UnitID='" + '' + sUnitID + '' + "']/Format[@FormatID='" + '' + sFormatID + '' + "' and @FormatSN='" + '' + sFormatSN + '' + "']");
    if (!(oNode == null)) {
      rDoc.loadXML("<root>" + '' + oNode.xml.replace(/[\r\n]/g, "").replace(/>\s+</g, "><") + '' + "</root>");
      function_result = rDoc;
      return function_result;
    }
  }
  
  // if set or chapterid in range, retrieve xml content from subcenter
  // TODO improve this flag so it doesn't depend on globals  
  if ( GetXMLFromSubcenter || (sChapterID >= "0183" && sChapterID <= "0400") ) {

        if((sChapterID=="0215"&&sUnitID<"28"&&sUnitID!="14"&&sUnitID!="20")){
            xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0215' + '' + "/" + '' + '0215' + '' + "_" + '' + '01' + '' + "ENGLISHFORMATCONTENT.XML");

        }else if((sChapterID=="0215"&&sUnitID>="28")||(sChapterID=="0215"&&sUnitID=="14")||(sChapterID=="0215"&&sUnitID=="20")){
           xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0215' + '' + "/" + '' + '0215' + '' + "_" + '' + '02' + '' + "ENGLISHFORMATCONTENT.XML");

        }else if((sChapterID=="0225"&&sUnitID<"28"&&sUnitID!="14"&&sUnitID!="20")){
             xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0225' + '' + "/" + '' + '0225' + '' + "_" + '' + '01' + '' + "ENGLISHFORMATCONTENT.XML");

        }else if((sChapterID=="0225"&&sUnitID>="28")||(sChapterID=="0225"&&sUnitID=="14")||(sChapterID=="0225"&&sUnitID=="20")){
             xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0225' + '' + "/" + '' + '0225' + '' + "_" + '' + '02' + '' + "ENGLISHFORMATCONTENT.XML");

        }else if(sChapterID=="0235"){
            xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + '0235' + '' + "/" + '' + '0235' + '' + "_" + '' + '01' + '' + "ENGLISHFORMATCONTENT.XML");

        }else{
          xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + sChapterID + '' + "/" + '' + sChapterID + '' + "_" + '' + sUnitID + '' + "ENGLISHFORMATCONTENT.XML");

        }

     // xmldoc.load(sCenterWeb + '' + "/CURRICULUMNXML/ENGLISH/" + '' + sChapterID + '' + "/" + '' + sChapterID + '' + "_" + '' + sUnitID + '' + "ENGLISHFORMATCONTENT.XML");
       var str=xmldoc.xml.replace(/\r\n/g,"").replace(/>\s+</g,"><")
        xmldoc.loadXML(str)
       function_result = xmldoc;
  } else {
    xmlhttp = new XMLHttpRequest();
    while (bSucc == false && nErrCount < MaxErrTimes) {
      xmlhttp.open("POST", sMainWeb + '' + "/system/English/ESL/" + '' + sGetContentFormatID + '' + "/" + '' + sGetContentFormatID + '' + "GetContent.asp", false);
      xmlhttp.send(vSendDoc);
      if (xmlhttp.responseXML.xml == "") {
        bSucc = false;
        nErrCount += 1;
      } else {
        bSucc = true;
      }
    }
    if (nErrCount >= MaxErrTimes) {
  MsgBox("获取数据出错，请检查网络连线状态，退出并重新进入课堂。          ", vbInformation, " IDIIL 提示");
      return function_result;
    }
    rDoc.loadXML("<root>" + '' + xmlhttp.responseText + '' + "</root>");
    function_result = rDoc;
    if (xmldoc.xml == "") {
      xmldoc.loadXML("<root ChapterID='" + '' + sChapterID + '' + "' UnitID='" + '' + sUnitID + '' + "'>" + '' + xmlhttp.responseText + '' + "</root>");
    } else {
      if (xmldoc.selectSingleNode("//root[@ChapterID='" + '' + sChapterID + '' + "' and @UnitID='" + '' + sUnitID + '' + "']") == null) {
        xmldoc.loadXML("<root ChapterID='" + '' + sChapterID + '' + "' UnitID='" + '' + sUnitID + '' + "'>" + '' + xmlhttp.responseText + '' + "</root>");
      } else {
        xmldoc.documentElement.appendChild(xmlhttp.responseXML.documentElement);
      }
    }
  }
  if (!isIE())  xmldoc.save(FormatXMLFile);   //hhu---
  return function_result;
}


function GotoNextFormat(sMainWeb, bFromMainPage) {
    debugger
  if (!SubmitAllRecordData())  return false ;
  
   uploadAllExerData(); // hhu 2017/10/11
	
  var xmldoc, sFormatSN, oNode;
  xmldoc = createXMLDoc();
  xmldoc.async = false;
  xmldoc.load(UnitXMLFile);
  
  if(isIE())
  {
   xmldoc=xmlUnitContent;
   sFormatSN="1"
  }
  else
  { 
    //hhu--
          // Jonathan Hsu 10-14-2015
          // Check for <RecoverInfo> first, NOTE: original logic assumed continue on error
          // if RecoverInfo exists, increment saved FormatSN
          oNode = xmldoc.documentElement.selectSingleNode("RecoverInfo");
          if (oNode != null) {
            oNode = oNode.selectSingleNode("ReviewFormatSN");
            if (!(oNode == null)) {
              sFormatSN = oNode.text;
              if (gaussianRound(sFormatSN) < xmldoc.documentElement.selectNodes("Format").length) {
                oNode.text = String(gaussianRound(sFormatSN) + 1);
                 xmldoc.save(UnitXMLFile);   
              }
            } else {
              sFormatSN = xmldoc.documentElement.selectSingleNode("RecoverInfo/FormatSN").text;
              if (bFromMainPage == false) {
                xmldoc.documentElement.selectSingleNode("RecoverInfo/FormatSN").text = String(gaussianRound(sFormatSN) + 1);
                xmldoc.documentElement.selectSingleNode("RecoverInfo/GroupSN").text = "1";
              }
              xmldoc.save(UnitXMLFile); 
            }
          }
      //hhu---
    }

  // Jonathan Hsu 10-14-2015
  // supposed to continue (on error) if <RecoverInfo> (and thus sFormatSN) doesn't exist
  // this works as-is because NaN1 will never exist as a format

  // TODO this logic doesn't make sense and should be rewritten

  // if from main page use given FormatSN, otherwise increment
  if (!bFromMainPage) {
    sFormatSN = String(gaussianRound(sFormatSN) + 1);
  }
  oNode = xmldoc.documentElement.selectSingleNode("Format[@FormatSN='" + '' + sFormatSN + '' + "']");
  // FIXME this does not work as intended, deletes sound files only when no valid FormatSN is given
  if (oNode == null) {
      //window.parent.location.replace(sCenterWeb +'/StudentZone/studentZone_3.jsp')
      location.href=sMainWeb + '' + ('/system/English/load.asp?' + QueryString);
  } else {
    sFormatID = oNode.getAttribute("FormatID");
    strRequestFormatID = sFormatID;
    strTempFormatID = sFormatID;
    switch (sFormatID) {
      case "01J":
        strTempFormatID = "018";
        break;
      case "01Q":
      case "043":
      case "034":
        strTempFormatID = "01Y";
        break;
      case "01S":
      case "025":
      case "026":
      case "031":
      case "032":
      case "035":
      case "036":
	  case "037":
      case "040":
      case "041":
      case "044":
        strTempFormatID = "01Z";
        break;
      case "01X":
      case "023":
      case "030":
      case "038":
      case "042":
      case "045":
      case "022":
        strTempFormatID = "020";
        break;
      case "027":
        strTempFormatID = "021";
        break;
      case "028":
      case "029":
        strTempFormatID = "024";
        break;
	  case "039":
	    strTempFormatID = "024";
        break;  
    case "SA2":
        strTempFormatID = "SA2";
        break;
    case "SA3":
        strTempFormatID = "SA3";
        break;
    }
	
    location.replace(sCenterWeb + '' + "/SYSTEM/ENGLISH/ESL/" + '' + strTempFormatID + '' + "/" + '' + strTempFormatID + '' + ('.jsp?' + QueryString) + '' + "&RequestFormatID=" + '' + strRequestFormatID);
  }
}
function GotoPreFormat(CurrFormatSN) {
  var xmldoc, sFormatSN, oNode;
  xmldoc = createXMLDoc();
  xmldoc.async = false;
  xmldoc.load(UnitXMLFile);
  oNode = xmldoc.documentElement.selectSingleNode("RecoverInfo/ReviewFormatSN");
  if (oNode == null) {
    oNode = xmldoc.createElement("ReviewFormatSN");
    xmldoc.documentElement.selectSingleNode("RecoverInfo").appendChild(oNode);
  }
  oNode.text = String(gaussianRound(CurrFormatSN) - 1);
  xmldoc.save(UnitXMLFile);
  oNode = xmldoc.documentElement.selectSingleNode("Format[@FormatSN='" + '' + String(gaussianRound(CurrFormatSN) - 1) + '' + "']");
  sFormatID = oNode.getAttribute("FormatID");
  location.replace("../" + '' + sFormatID + '' + "/" + '' + sFormatID + '' + ('.jsp?' + QueryString));
}

function getPath(FileID, FileType) {
  var function_result = "";
  var sIDStr = '',
      sID = '',
      n = 0,
      nLen = 0,
      nNum = 0,
      sPathSN = '',
      sPathType = '',
      sPath = '';
  sIDStr = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  sID = Mid(FileID, 2);
  nLen = sID.length;
  for (var _n = 1; _n <= nLen; _n++) {
    nNum += (InStr(sIDStr, Mid(sID, _n, 1)) - 1) * Math.pow(36, nLen - _n);
  }
  sPathSN = 1 + Math.floor(nNum / 1000);
  sPath = "../../../MATERIAL(ENGLISH)/" + '' + FileType + '' + "/" + '' + sPathSN + '' + "/" + '' + FileID;
  function_result = sPath; //getPath add .swf
  return function_result;
}

/**
 * @obsolete
 * overridden below, this function can be removed
 * TODO: remove this function completely
 */
var SubmitRecordSound = SubmitRecordSound || function (sCenterID, sStudentID, sFileName, sRecordFile) {
 var function_result = null;
 if (sNeedSubmitScore.toUpperCase() == "N") {
 function_result = true;
 return function_result;
 }
 function_result = false;
 var sDoc, oRoot, oSoundNode, xmlhttp, sData;
 sDoc = createXMLDoc();
 xmlhttp = new XMLHttpRequest();
 oRoot = sDoc.createElement("Root");
 sDoc.appendChild(oRoot);
 AddNode(sDoc, oRoot, "CenterID", sCenterID);
 AddNode(sDoc, oRoot, "StudentID", sStudentID);
 AddNode(sDoc, oRoot, "FileName", sFileName);
 oSoundNode = sDoc.createElement("Sound");
 oSoundNode.setAttribute("xmlns:dt", "urn:schemas-microsoft-com:datatypes");
 oSoundNode.setAttribute("dt:dt", "bin.base64");
 sData = AudioCtrl.GetWaveData(String(sRecordFile));
 if (sData == ""&& false) {//fixme
  MsgBox("可能你没有录音或声音太小，或你的录音话筒不正常，请重新录音并提交。                ", vbInformation, " IDIIL 提示");
 return function_result;
 }
 oSoundNode.text = sData;
 oRoot.appendChild(oSoundNode);
 xmlhttp.open("POST", "../../PUBLIC/SOUNDRECEIVE.jsp", false);
 xmlhttp.send(sDoc);
 if (xmlhttp.responseText !== "") {
  MsgBox("可能发生网络故障或你的录音文件太大，请检查网络连接状态，并选择正确的录音文件重试提交。                ", vbInformation, " IDIIL 提示");
 return function_result;
 }
 function_result = true;
 return function_result;
};


var xmlAllRecordDataInfo=null;


function SubmitAllRecordData() {
   if(!(xmlAllRecordDataInfo)) return true;
	
  var function_result = null;
  if (sNeedSubmitScore.toUpperCase() == "N") {
    function_result = true;
    return function_result;
  }
  
  sDoc=xmlAllRecordDataInfo;
  function_result = false;
  var sDoc,oRoot,xmlhttp,nErrCount = 0;
    xmlhttp = new XMLHttpRequest();
  while (nErrCount < 3 && nErrCount != -1) {
    xmlhttp.open("POST", "../../PUBLIC/DATARECEIVE_C.jsp", false);
    xmlhttp.send(sDoc);
    if (xmlhttp.responseText.trimRight() !== "") {
      nErrCount += 1;
    } else {
      nErrCount = -1;
    }
  }
  
  if (nErrCount >= 3) {
  MsgBox("可能发生网络故障，请检查网络连线状态，重试提交。                ", vbInformation, " IDIIL 提交");
    return function_result;
  }
  xmlAllRecordDataInfo=null;
  function_result = true;
  return function_result;
}

function SubmitRecordData(sContentID, sContentText, sFileName) {
  var function_result = null;
  if (sNeedSubmitScore.toUpperCase() == "N") {
    function_result = true;
    return function_result;
  }
  function_result = false;
  var sDoc,
      oRoot,
      xmlhttp,
      nErrCount = 0;
	  
  if(!(xmlAllRecordDataInfo)){
	xmlAllRecordDataInfo= createXMLDoc();
	oRoot = xmlAllRecordDataInfo.createElement("Root");
	xmlAllRecordDataInfo.appendChild(oRoot);
  }

    sDoc=xmlAllRecordDataInfo;
    oRoot = sDoc.documentElement;
  
  xmlhttp = new XMLHttpRequest();

  oItem=sDoc.createElement("Item");
  AddNode(sDoc, oItem, "CenterID", sCenterID);
  AddNode(sDoc, oItem, "StudentID", sStudentID);
  AddNode(sDoc, oItem, "InstructorID", sInstructorID);
  AddNode(sDoc, oItem, "CourseType", sCourseType);
  AddNode(sDoc, oItem, "ScheduleType", sScheduleType);
  AddNode(sDoc, oItem, "AssignDate", sAssignDate);
  AddNode(sDoc, oItem, "AssignID", sAssignID);
  AddNode(sDoc, oItem, "ChapterID", sChapterID);
  AddNode(sDoc, oItem, "UnitID", sUnitID);
  AddNode(sDoc, oItem, "FormatID", FORMATID);
  AddNode(sDoc, oItem, "ContentID", sContentID.substring(0,200));
  AddNode(sDoc, oItem, "ContentText", sContentText);
  AddNode(sDoc, oItem, "FileName", sFileName);
  AddNode(sDoc, oItem, "Score", window["myWordScore"][nClicked]);
  AddNode(sDoc, oItem, "ScoreResult", JSON.stringify(window["wordsPhonemes"][nClicked]));
  oRoot.appendChild(oItem);
  window["myWordScore"]=[];
  window["wordsPhonemes"]=[];
  // xmlhttp.open("POST", "../../PUBLIC/DATARECEIVE_C.jsp", false);

  function_result = true;
  return function_result;
}

function SubmitRecordData_backup(sContentID, sContentText, sFileName) {
  var function_result = null;
  if (sNeedSubmitScore.toUpperCase() == "N") {
    function_result = true;
    return function_result;
  }
  function_result = false;
  var sDoc,
      oRoot,
      xmlhttp,
      nErrCount = 0;
  sDoc = createXMLDoc();
  xmlhttp = new XMLHttpRequest();
  oRoot = sDoc.createElement("Root");
  sDoc.appendChild(oRoot);
  AddNode(sDoc, oRoot, "CenterID", sCenterID);
  AddNode(sDoc, oRoot, "StudentID", sStudentID);
  AddNode(sDoc, oRoot, "InstructorID", sInstructorID);
  AddNode(sDoc, oRoot, "CourseType", sCourseType);
  AddNode(sDoc, oRoot, "ScheduleType", sScheduleType);
  AddNode(sDoc, oRoot, "AssignDate", sAssignDate);
  AddNode(sDoc, oRoot, "AssignID", sAssignID);
  AddNode(sDoc, oRoot, "ChapterID", sChapterID);
  AddNode(sDoc, oRoot, "UnitID", sUnitID);
  AddNode(sDoc, oRoot, "FormatID", FORMATID);
  AddNode(sDoc, oRoot, "ContentID", sContentID.substring(0,200));
  AddNode(sDoc, oRoot, "ContentText", sContentText);
  AddNode(sDoc, oRoot, "FileName", sFileName);
  while (nErrCount < 3 && nErrCount != -1) {
    if (sCenterVR == "R" && ('' + sScheduleType == "C")) {
      xmlhttp.open("POST", "../../PUBLIC/DATARECEIVE_C.jsp", false);
    } else {
      xmlhttp.open("POST", sMainWeb + '' + "/system/English/Public/DataReceive.asp", false);
    }
    xmlhttp.send(sDoc);
    if (xmlhttp.responseText !== "") {
      nErrCount += 1;
    } else {
      nErrCount = -1;
    }
  }
  if (nErrCount >= 3) {
  MsgBox("可能发生网络故障，请检查网络连线状态，重试提交。                ", vbInformation, " IDIIL 提交");
    return function_result;
  }
  function_result = true;
  return function_result;
}


function SubmitExerData(sValue) {
  var function_result = null;
  if (sNeedSubmitScore.toUpperCase() == "N") {
    function_result = true;
    return function_result;
  }
  var httpxml, sLocation, n;
  if (sCenterVR == 'R') sLocation = "../../PUBLIC/ENGLISHCOMMIT_C.jsp";else sLocation = sMainWeb + '/system/English/public/EnglishCommit.asp';

  httpxml = new XMLHttpRequest();
  sDoc = createXMLDoc();
  mNode = sDoc.createElement("item");
  sDoc.appendChild(mNode);
  cNode = sDoc.createElement("value");
  cNode.text = sValue + '' + ('^' + sAssignID + '^' + sScheduleType);
  mNode.appendChild(cNode);
  httpxml.open("POST", sLocation, false);
  httpxml.send(sDoc);
  if (httpxml.responseText !== "") {
    function_result = false;
  } else {
    function_result = true;
  }
  if (sValue.substring(0, 4) == "?Per" || sValue.substring(0, 4) == "?Exe") {
    if (httpxml.responseText !== "") {
  n = MsgBox("学习成绩保存失败，可能是网络故障，是否重试保存 ？     ", vbYesNo, "保存成绩失败");
      if (n == vbYes) {
        
        SubmitExerData(sValue);
      }
      return function_result;
    }
  }
  return function_result;
}
function GetSubmitData(sStr) {
  var sFormatSN = '',
      sExerInfo = '',
      nSpendTime = 0,
      nTotalExercise = 0,
      nTotalrightAns,
      nTotalWrongAns,
      nTotal1stWrongAns = 0,
      nTotal2ndWrongAns = 0,
      nTotal3rdWrongAns = 0;
  var nPos1 = 0,
      nPos2 = 0,
      nPos3 = 0,
      i = 0,
      sWordInfo = '',
      sWord = '',
      sAns = '',
      nWrongTimes = 0,
      sValue = '';
  nTotalExercise = rNodes.length;
  nTotalrightAns = 0;
  nTotalWrongAns = 0;
  nTotal1stWrongAns = 0;
  nTotal2ndWrongAns = 0;
  nTotal3rdWrongAns = 0;
  nPos1 = InStr(sStr, ":");
  sFormatSN = sStr.substring(0, nPos1 - 1);
  sStr = Mid(sStr, nPos1 + 1);
  nPos1 = InStr(sStr, "@");
  nSpendTime = sStr.substring(0, nPos1 - 1);
  sStr = Mid(sStr, nPos1 + 1);
  if (Right(sStr, 1) != "|") {
    sStr += '' + "|";
  }
  for (var i = 0; i <= nTotalExercise - 1; i++) {
    sWord = rNodes[i].selectSingleNode("Word").text;
    sWordInfo = sWord + '' + "~";
    nWrongTimes = 0;
    nPos1 = InStr(sStr, sWord + '' + "~");
    if (nPos1 > 0) {
      while (nPos1 > 0) {
        nPos2 = nPos1 + (sWord + '' + "~").length;
        nPos3 = InStr(nPos2, sStr, "|");
        sAns = Mid(sStr, nPos2, nPos3 - nPos2);
        sWordInfo = sWordInfo + '' + sAns + '' + "/";
        if (sAns != sWord) {
          nWrongTimes += 1;
        }
        sStr = Mid(sStr, 1, nPos1 - 1) + '' + Mid(sStr, nPos3 + 1);
        nPos1 = InStr(sStr, sWord + '' + "~");
      }
    } else {
      nWrongTimes = 3;
    }
    if (Right(sWordInfo, 1) == "/") {
      sWordInfo = sWordInfo.substring(0, sWordInfo.length - 1);
    }
    sExerInfo = sExerInfo + '' + sWordInfo + '' + "|";
    
    switch (nWrongTimes) {
      
      case 0:
        nTotalrightAns = gaussianRound(nTotalrightAns) + 1;
        break;
      
      case 1:
        nTotalWrongAns = gaussianRound(nTotalWrongAns) + 1;
        nTotal1stWrongAns = gaussianRound(nTotal1stWrongAns) + 1;
        break;
      
      case 2:
        nTotalWrongAns = gaussianRound(nTotalWrongAns) + 1;
        nTotal2ndWrongAns = gaussianRound(nTotal2ndWrongAns) + 1;
        break;
      
      case 3:
        nTotalWrongAns = gaussianRound(nTotalWrongAns) + 1;
        nTotal3rdWrongAns = gaussianRound(nTotal3rdWrongAns) + 1;
        break;
    } //SELENDJH;
  }
  //debugger;
  sValue = '?Performance=' + sCenterID + '^' + sInstructorID + '^' + sCourseType + '^' + sStudentID + '^' + sChapterID + '^' + sUnitID + '^' + '' + nTotalExercise + '' + "^" + '' + nTotalrightAns + '' + "^" + '' + nTotalWrongAns + '' + "^" + '' + nTotal1stWrongAns + '' + "^" + '' + nTotal2ndWrongAns + '' + "^" + '' + nTotal3rdWrongAns + '' + "^" + '' + nSpendTime;
  SubmitExerData(sValue);
  sValue = '?Exercise=' + sCenterID + '^' + sInstructorID + '^' + sCourseType + '^' + sStudentID + '^' + sScheduleType + '^' + sAssignDate + '^' + sChapterID + '^' + sUnitID + '^' + '' + sFormatSN + '' + "^" + '' + sExerInfo;
  SubmitExerData(sValue);
}
//SELENDJH;
function window_onunload() {}

  //    <!--============== 下面公用部分由 GM 创建 ================-->

var GoodJob = "../../PUBLIC/GOODJOB.SWF";
var TryAgain = "../../PUBLIC/TRYAGAIN.SWF";
var nCurrentPlay = 1,
    sCurrFormatSN = '',
    nMaxFormatSN = 0,
    nMaxPlay = 0;
var nDownGroup = 0,
    nDownInGroup = 0,
    nDownItemAttrib = 0;
var bExistHistory = false,
    bCreatedXML = false,
    ErrCount = 0,
    sAnswer = '',
    dStartTime,
    nExecCount = 0;
var nTotalrightAns = 0,
    nTotalWrongAns = 0,
    nTotal1stWrongAns = 0,
    nTotal2ndWrongAns = 0,
    nTotal3rdWrongAns = 0;
var bRecordState = false,
    aMsg = [],
    bFlashIsPlay = false;
bRecordState = "Saved";
nDownGroup = 0;
nDownInGroup = 0;
nDownItemAttrib = 0;
bCreatedXML = false;
ErrCount = 0;
sCurrFormatSN = 1;
nMaxPlay = 0;
  aMsg[0] = " 请先录音并提交 ！";
  aMsg[1] = " 请录音并点选你觉得满意的一次录音，再点击此按钮提交 ！";
  aMsg[2] = " 声音提交成功 ! ";
  aMsg[3] = " 请完成本题后，再进行下一问题 ！";
  aMsg[4] = " 你现在录音的图还没有提交过录音， " + '' + vbCrLf + '' + "请先提交对它的录音 ！ ";
  aMsg[5] = " 请先对所有图片录音并提交 ！";
  aMsg[6] = " 请将全部单词录音提交后，再回到上一组问题 ！";
  aMsg[7] = " 请将全部单词录音提交后，再进行下一组问题 ！";

showcontrolpanel = showControlPanel = ShowControlPanel;

function ShowControlPanel(bRecordAndSubmit, bReplay, bBack, bForward, bDict) {
  // don't use display:block on table elements, just clear to default --Jonathan Hsu 10-15-2014
  var s = "";
  var h = "none";
  CPanel.style.display = s;
  if (bRecordAndSubmit !== "") {
    if (bRecordAndSubmit) {
      tdRecord1.style.display = s;
      tdRecord2.style.display = s;
      tdStop2.style.display = s;
      tdRecordCard1.style.display = s;
      tdRecordCard2.style.display = s;
      tdSubmit1.style.display = s;
      tdSubmit2.style.display = s;
    } else {
      tdRecord1.style.display = h;
      tdRecord2.style.display = h;
      tdStop2.style.display = h;
      tdRecordCard1.style.display = h;
      tdRecordCard2.style.display = h;
      tdSubmit1.style.display = h;
      tdSubmit2.style.display = h;
    }
  }
  if (bReplay !== "") {
    if (bReplay) {
      tdReplay1.style.display = s;
      tdReplay2.style.display = s;
    } else {
      tdReplay1.style.display = h;
      tdReplay2.style.display = h;
    }
  }
  if (bBack !== "") {
    if (bBack) {
      tdBack1.style.display = s;
      tdBack2.style.display = s;
    } else {
      tdBack1.style.display = h;
      tdBack2.style.display = h;
    }
  }
  if (bForward !== "") {
    if (bForward) {
      tdForward1.style.display = s;
      tdForward2.style.display = s;
    } else {
      tdForward1.style.display = h;
      tdForward2.style.display = h;
    }
  }
  if (bDict !== "") {
    if (bDict) {
      tdDict1.style.display = s;
      tdDict2.style.display = s;
    } else {
      tdDict1.style.display = h;
      tdDict2.style.display = h;
    }
  }
}

Setbuttons = setbuttons = setButtons = SetButtons;
function SetButtons(bRecord, bSubmit, bReplay, bBack, bForward, bDict) {
    console.log("setbuttons ++++",bRecord,"--",bSubmit,"--",bReplay,"--",bBack,"--",bForward)
  if (bRecord !== "") {
    if (bRecord) {
      Record.Movie = "../../PUBLIC/RECORD.SWF";
      if (bRecordState == "Recording") {
        Record.GoToFrame(2);
      }
    } else {
      Record.Movie = "../../PUBLIC/RECORD_D.SWF";
    }
  }
  if (bSubmit !== "") {
    if (bSubmit) {
      Submit.Movie = "../../PUBLIC/SUBMIT.SWF";
    } else {
      Submit.Movie = "../../PUBLIC/SUBMIT_D.SWF";
    }
  }
  if (bReplay !== "") {
    if (bReplay) {
      Replay.Movie = "../../PUBLIC/REPLAY.SWF";
    } else {
      Replay.Movie = "../../PUBLIC/REPLAY_D.SWF";
    }
  }
  if (bBack !== "") {
    if (bBack) {
      Back.Movie = "../../PUBLIC/BACK.SWF";
    } else {
      Back.Movie = "../../PUBLIC/BACK_D.SWF";
    }
  } else {
    if (nCurrentPlay - 1 == 0) {
      Back.Movie = "../../PUBLIC/BACK_D.SWF";
    } else {
      Back.Movie = "../../PUBLIC/BACK.SWF";
    }
  }
  if (bForward !== "") {
    if (bForward) {
      Forward.Movie = "../../PUBLIC/FORWARD.SWF";
    } else {
      Forward.Movie = "../../PUBLIC/FORWARD_D.SWF";
    }
  }
  if (bDict !== "") {
    if (bDict) {
      Dict.Movie = "../../PUBLIC/CHINESE.SWF";
    } else {
      Dict.Movie = "../../PUBLIC/CHINESE_D.SWF";
    }
  }
}

new idiil.ui.media.SWFObject.FSCommand("Dict", Dict_FSCommand);
function Dict_FSCommand(cmd, arg) {
	
alertify.DictDialog || alertify.dialog('DictDialog',function(){
    var iframe;
    return {
        main:function(w,h,src){
            return this.set({ 
                'w': w,
                'h': h,
                'src': src
                });
        },
        // we only want to override two options (padding and overflow).
        setup:function(){
            return {
                options:{
                    title: 'Dictionary',
                    //disable both padding and overflow control.
                    padding : !1,
                    overflow: !1,
                    basic:true,
                    modal:false,
                    maximizable:false,
                    resizable:false,
                    padding:false,
                    closableByDimmer:false
                }
            };
        },
        // This will be called once the DOM is ready and will never be invoked again.
        // Here we create the iframe to embed the video.
        build:function(){           
            // create the iframe element
            iframe = document.createElement('iframe');
            iframe.frameBorder = "no";
            iframe.width = "100%";
            iframe.height = "100%";
            // add it to the dialog
            this.elements.content.appendChild(iframe);
            
            this.elements.dialog.style.left = this.elements.dialog.style.right = '0px';
            this.elements.dialog.style.width = '180px';
            this.elements.dialog.style.height = '165px';
        },
        // dialog custom settings
        settings:{
            w:180,
            h:165,
            src:''
        },
        // listen and respond to changes in dialog settings.
        settingUpdated:function(key, oldValue, newValue){
            switch(key){
               case 'w':
                    this.elements.dialog.style.width = newValue + 'px';
                    break;
               case 'h':
                    this.elements.dialog.style.height = newValue + 'px';
                    break;
               case 'src':
                    iframe.src = newValue;
            }
        },
        // listen to internal dialog events.
        hooks:{
            onclose: function(){},
            onupdate: function(option,oldValue, newValue){
                switch(option){
                    case 'resizable':
                        if(newValue){
                            this.elements.dialog.removeAttribute('style');
                            iframe && iframe.removeAttribute('style');
                        }else{
                            this.elements.dialog.style.minHeight = 'inherit';
                            iframe && (iframe.style.minHeight = 'inherit');
                        }
                    break;    
                }    
            }
        }
    };
});
  if (cmd.toUpperCase() == "OVER") {
    ShowPrompt("Dict");
    return;
  }
  var sLocation = '../../DICT/IDIILDICT.jsp?sMainWeb=' + sMainWeb;
  //window.open(sLocation, "IDIILDICT", "height=165,width=180,status=no,menubar=no,location=no,toolbar=no,scrollBars=yes");
    alertify.DictDialog(180,165,sLocation);
}
var e;


new idiil.ui.media.SWFObject.FSCommand("Record", Record_FSCommand);
var Record_FSCommand = Record_FSCommand || function(cmd, arg) {
  if (cmd.toUpperCase() == "O_RECORD") {
    ShowPrompt("Record");
    return ;
  } else if (cmd.toUpperCase() == "O_STOP") {
    ShowPrompt("Stop");
    return ;
  }

  var nRecordNum=0, bSetAttrib=false, nSize=0;
  bSetAttrib = true;
  nRecordNum = parseInt(tblRecord.getAttribute("Record")) + 1;
  if (nRecordNum >= 6) {
    for (var i = 0; i <= 5; i++) {
      if (tblRecord.rows[0].cells[i].style.visibility == "visible") {
        nRecordNum = i;
        bSetAttrib = false;
        break;
      }
    }
  }
  e = tblRecord.rows[1];
  if (cmd.toUpperCase() == "RECORD") {
    SetButtons(true, false, false, false, false, "");
    fso = CreateObject("HHFSO.FileSystemObject");
    if (!fso.FolderExists(SoundSavePath.substring(0, SoundSavePath.length - 1))) {
     fso.CreateFolder(SoundSavePath.substring(0, SoundSavePath.length - 1));
   }
   if (isIE())
   { AudioCtrl.RecordStart(SoundSavePath + '' + nCurrentPlay + '' + "_" + '' + nRecordNum + '' + ".wav", 0);}
	
    fso = null;
    if (err.number != 0) {
      if (err.number == -3) {
  MsgBox("麦克风被占用, 无法录音。" + '' + vbCrLf + '' + "如果你正在与老师通话， 请在通话结束后再录音。" + '' + vbCrLf + '' + "如果其他程序正在录音， 请关闭其他程序。" + '' + vbCrLf + '' + "提示:使用新版本的操作系统和好的声卡可以更好处理这种状况。", vbInformation, " IDIIL 提示");
      } else if (err.number == -4) {
  MsgBox("录音设备故障，请检查是否正确安装了声卡。      ", vbInformation, " IDIIL 提示");
      } else if (err.number == -1) {
  MsgBox("你已经开始录音了！      ", vbInformation, " IDIIL 提示");
      } else {
  MsgBox("录音失败!        ", vbInformation, " IDIIL 提示");
      }
      Record.GoToFrame(0);
    } else {
      bRecordState = "Recording";
      Record.GoToFrame(2);
    }
  } else {
    bRecordState = "Saved";
	if (isIE())
    { nSize = AudioCtrl.RecordStop();}
	
    if (nSize == 0&&!nSize) {//fixme
  MsgBox("录音保存失败，可能你说话声音太小或太早说话或系统发生故障。      ", vbInformation, " IDIIL 提示");
    } else {
      e.cells[nRecordNum].className = "tdNum_D";
      for (var i = 0; i <= 5; i++) {
        tblRecord.rows[0].cells[i].style.visibility = "hidden";
      }
      tblRecord.rows[0].cells[nRecordNum].style.visibility = "visible";
      if (bSetAttrib) {
        tblRecord.setAttribute("Record", nRecordNum);
      }
      try{ PlayRecord(nRecordNum); }catch(ee){
          console.log("play record failed XXXXXXXXXXXXXXXXXXXXXXXXXXX")
      }
    }
    SetButtons("", true, true, "", true, "");
  }
};

function  getResultHTML(words,refWords){
	var strHTML="";
	/*
	strHTML=strHTML+'<span style="float:left;margin-left:20px;line-height:20px;">&diams;</span>';
	strHTML=strHTML+'<span style="height:20px;width:20px; background-color:#090; display:block;float:left; "></span>';
	strHTML=strHTML+'<span style="float:left;margin:-0 5px 0 5px; line-height:20px;">&gt;75</span>';
	strHTML=strHTML+'<span style="height:20px;width:20px; background-color:#FF0; display:block;float:left;"></span>';
	strHTML=strHTML+'<span style="float:left;margin:0 5px 0 5px;line-height:20px;">50-75</span>';
	strHTML=strHTML+'<span style="height:20px;width:20px; background-color:#F00; display:block;float:left;"></span>';
	strHTML=strHTML+'<span style="float:left;margin:0 5px 0 5px;line-height:20px;">&lt;50</span>';
	strHTML=strHTML+'<span style="float:left;margin-right:20px;line-height:20px;">&diams;</span>';
	*/

	//var arrRefs=refWords.split(" ");
	var arrRefs=refWords.replace(/[,;!\?\.]/g," ").split(" ");
	for(var i=0;i<arrRefs.length;i++) 
	{
		var word=arrRefs[i];
		var itemHtml=word;
		for(var j=0;j<words.length;j++)
		{
			var itemWord=words[j];
			if(word.replace(/[,;!\?\.]/g,"")==itemWord.word.replace(/[,;!\?\.]/g,""))	
			{
				nscore=itemWord.scores.overall;
				if(parseInt(nscore)<=50) itemHtml="<span style='color:#F00;line-height:20px;'>" +word+"</span>";
				if(parseInt(nscore)>50 && parseInt(nscore)<=75 ) itemHtml="<span style='color:#FF0;line-height:20px;'>" +word+"</span>";
				if(parseInt(nscore)>75  ) itemHtml="<span style='color:#090;line-height:20px;'>" +word+"</span>";
			}
		}
		strHTML=strHTML+" &nbsp;"+itemHtml
	}

	return 	 strHTML;
}


function tblRecord_onclick(event) {
  event=window.event|| event;
  if (event.srcElement.tagName != "TD") {
    return;
  }
  if (event.srcElement.className == "tdNum_H") {
    return;
  }
  if (String(tblRecord.getAttribute("Record")) == "-1") {
    return;
  }
  nRecordNum = event.srcElement.cellIndex;
  if (nRecordNum > tblRecord.getAttribute("Record")) {
    return;
  }
  for (var i = 0; i <= tblRecord.rows[0].cells.length - 1; i++) {
    tblRecord.rows[0].cells[i].style.visibility = "hidden";
  }
  tblRecord.rows[0].cells[nRecordNum].style.visibility = "visible";
  PlayRecord(nRecordNum);

}

function ClearRecord() {
  tblRecord.setAttribute("Record", -1);
  for (var i = 0; i <= tblRecord.rows[0].cells.length - 1; i++) {
    tblRecord.rows[0].cells[i].style.visibility = "hidden";
    tblRecord.rows[1].cells[i].className = "tdNum_D";
  }
  
  document.getElementById("scoreResult").innerHTML="";
  document.getElementById("scoreResult").style.display="none";
}
function PlayRecord(RecordNum) {
  var fso, bExist;
  if (bRecordState == "Recording") {
    return;
  }
  if (bFlashIsPlay == true) {
    return;
  }
  
  try{
    document.getElementById("scoreResult").innerHTML=getResultHTML(window["wordsPhonemes"][RecordNum],sContentText);
     document.getElementById("scoreResult").style.display="";
  }catch(ee){}
  
  fso = CreateObject("HHFSO.FileSystemObject");
  bExist = fso.FileExists(SoundSavePath + '' + nCurrentPlay + '' + "_" + '' + RecordNum + '' + ".wav");
  fso = null;
  bExist = true;
  if (bExist) {
    AudioCtrl.PlaySound(SoundSavePath + '' + nCurrentPlay + '' + "_" + '' + RecordNum + '' + ".wav");
    if (err.number == -4) {
  MsgBox("声音设备故障，请检查是否正确安装了声卡。      ", vbInformation, " IDIIL 提示");
    } else if (err.number == -1 || err.number == -3) {
  MsgBox("声音设备被占用，无法播放声音！    ", vbInformation, " IDIIL 提示");
    } else if (err.number == -2) {
  MsgBox("保存的录音异常丢失！可重新录音。    ", vbInformation, " IDIIL 提示");
    } else if (err.number != 0) {
  MsgBox("播放声音发生异常！    ", vbInformation, " IDIIL 提示");
    }
  }
}

function __PlaySound(sSoundID) {
  var sOldSoundName, sNewSoundName;
  if (InStr(1, sSoundID, "GOOD", 1) != 0 || InStr(1, sSoundID, "TRY", 1) != 0) {
    sNewSoundName = sSoundID.toUpperCase();
  } else {
    sNewSoundName = String(getPath(sSoundID, "S"));
  }
  sOldSoundName = String(flsSound.Movie).toUpperCase();
  
  if (sOldSoundName == sNewSoundName.toUpperCase()) {
    flsSound.Rewind();
    flsSound.Play();
  } else {
    flsSound.Movie = sNewSoundName;
  }
}

    //----------------------soundjs声音播放
   var myCurrentPlayID="";
    function PlaySound(id, loop) {
        myCurrentPlayID=id.toUpperCase();
        var objSoundPlay= createjs.Sound.play(id, createjs.Sound.INTERRUPT_EARLY, 0, 0, loop);
        objSoundPlay.on("complete",function(){
            flsSound_FSCommand('','');
        });
    }

function PlayMovie(oFlsMovie, sMovieID) {
  var sOldMovieName, sNewMovieName;
  sNewMovieName = String(getPath(sMovieID, "M"));
  sOldMovieName = String(oFlsMovie.Movie);
  if (sOldMovieName == sNewMovieName) {
    oFlsMovie.Rewind();
    oFlsMovie.Play();
  } else {
    oFlsMovie.BGColor = "255";
    oFlsMovie.Movie = sNewMovieName;
  }
}
function random(nRangeMax, nRndCount, nExcept, bFromZero, bSplit) {
  var function_result = "";
  var RnRangeMax, RnRndCount, RnExcept, RbSplit, RbFromZero;
  var nFrom = 0,
      sSymbol = '',
      sNum = '',
      nTmp = 0,
      sRnd = '';
  if (nRangeMax !== "") {
    RnRangeMax = Math.floor(nRangeMax);
  } else {
  MsgBox("nRangeMax 不能为空或是为零!");
    return;
  }
  if (nRndCount !== "") {
    RnRndCount = Math.floor(nRndCount);
  } else {
    RnRndCount = Math.floor(nRangeMax);
  }
  if (nExcept !== "") {
    RnExcept = Math.floor(nExcept);
  } else {
    RnExcept = " ";
  }
  if (bSplit !== "") {
    RbSplit = bSplit;
  } else {
    RbSplit = true;
  }
  if (bFromZero !== "") {
    RbFromZero = bFromZero;
  } else {
    RbFromZero = true;
  }
  if (nRangeMax > 9) {
    bSplit = true;
  }
  if (RbFromZero) {
    nFrom = 0;
  } else {
    nFrom = 1;
  }
  if (RbSplit) {
    sSymbol = ",";
  } else {
    sSymbol = "";
  }
  if (RbFromZero) {
    RnRndCount -= 1;
    RnRangeMax -= 1;
  }
  if (nRangeMax !== "" && nRndCount !== "") {
    if (nRndCount > nRangeMax) {
      RnRndCount = nRangeMax;
    }
  }
  for (var i = nFrom; i <= RnRangeMax; i++) {
    if (i !== RnExcept) {
      sNum = sNum + '' + i + '' + ",";
    }
  }
  sNum = Mid(sNum, 1, sNum.length - 1).split(",");
  nArrLength = sNum.length;
  var tRnRangeMax = RnRangeMax;
  for (var i = nFrom; i <= RnRangeMax; i++) {
    srand();
    nTmp = Math.floor(Math.random() * tRnRangeMax);
    if (sNum[0] == "" || !sNum[0]) {
      break;
    }
    sRnd = sRnd + '' + sNum[nTmp] + '' + sSymbol;
    sNum[nTmp] = "";
    for (j = 0; j <= nArrLength; j++) {
      if (sNum[j] == "") {
        if (j == nArrLength) {
          break;
        }
        sNum[j] = sNum[j + 1];
        sNum[j + 1] = "";
      }
    }
    nArrLength -= 1;
    tRnRangeMax -= 1;
    //console.log(sRnd, sNum, i);
  }
  if (Mid(sRnd, sRnd.length, 1) == ",") {
    function_result = Mid(sRnd, 1, sRnd.length - 1);
  } else {
    function_result = sRnd;
  }
  return function_result;
}

// TODO list/document globals used by this function
function History(style) {
  var hRoot, hNode, sWebPath, nSpendTime;
  nSpendTime = 0;
  hXmlDoc = createXMLDoc();
  if (bCreatedXML == false) {
    hXmlDoc.load("c:\\temp\\History.xml");
    if (hXmlDoc.xml == "") {
      bExistHistory = false;
      bCreatedXML = true;
      hRoot = hXmlDoc.createElement("History");
      hRoot.setAttribute("FormatID", FORMATID);
      hRoot.setAttribute("FormatSN", sCurrFormatSN);
      hXmlDoc.appendChild(hRoot);
      hNode = hXmlDoc.createElement("Info");
      hNode.setAttribute("CenterID", sCenterID);
      hNode.setAttribute("InstructorID", sInstructorID);
      hNode.setAttribute("CourseType", sCourseType);
      hNode.setAttribute("StudentID", sStudentID);
      hNode.setAttribute("UnitID", sUnitID);
      hNode.setAttribute("ChapterID", sChapterID);
      hRoot.appendChild(hNode);
      hNode = hXmlDoc.createElement("Time");
      hNode.setAttribute("SpendTime", 0);
      hRoot.appendChild(hNode);
      hNode = hXmlDoc.createElement("Exercise");
      hNode.setAttribute("Total", nExecCount);
      hNode.setAttribute("TotalrightAns", "0");
      hNode.setAttribute("TotalWrongAns", "0");
      hNode.setAttribute("Total1stWrongAns", "0");
      hNode.setAttribute("Total2ndWrongAns", "0");
      hNode.setAttribute("Total3rdWrongAns", "0");
      hRoot.appendChild(hNode);
      hNode = hXmlDoc.createElement("ExerInfo");
      hNode.text = "";
      hRoot.appendChild(hNode);
      hNode = xmldoc.documentElement.selectSingleNode("Format");
      hRoot.appendChild(hNode.cloneNode(true));
    } else {
      if (hXmlDoc.selectSingleNode("//History[@FormatID='" + '' + FORMATID + '' + "' and @FormatSN='" + '' + sCurrFormatSN + '' + "']") == null) {
        xfso = CreateObject("HHFSO.FileSystemObject");
        xfso.DeleteFile("c:\\temp\\History.xml");
        xfso = null;
        History(" ");
        return;
      } else {
        if (hXmlDoc.selectSingleNode("//Info[@CenterID='" + '' + sCenterID + '' + "' and @InstructorID='" + '' + sInstructorID + '' + "'and @CourseType='" + '' + sCourseType + '' + "'and @StudentID='" + '' + sStudentID + '' + "'and @ChapterID='" + '' + sChapterID + '' + "'and @UnitID='" + '' + sUnitID + '' + "']") == null) {
          xfso = CreateObject("HHFSO.FileSystemObject");
          xfso.DeleteFile("c:\\temp\\History.xml");
          xfso = null;
          History(" ");
          return;
        } else {
          bExistHistory = true;
          hNode = hXmlDoc.selectSingleNode("//Time");
          nSpendTime = parseInt(hNode.getAttribute("SpendTime"));
          hNode = hXmlDoc.selectSingleNode("//Exercise");
          nTotalrightAns = parseInt(hNode.getAttribute("TotalrightAns"));
          nTotalWrongAns = parseInt(hNode.getAttribute("TotalWrongAns"));
          nTotal1stWrongAns = parseInt(hNode.getAttribute("Total1stWrongAns"));
          nTotal2ndWrongAns = parseInt(hNode.getAttribute("Total2ndWrongAns"));
          nTotal3rdWrongAns = parseInt(hNode.getAttribute("Total3rdWrongAns"));
          rNodes = hXmlDoc.selectNodes("//Group");
          bGotoNext = true;
          bCreatedXML = true;
        }
      }
    }
   /* dStartTime = Date.DateAdd("s", nSpendTime * -1, time());*/
    dStartTime = Date.DateAdd("s", nSpendTime * -1, new Date());
  } else {
    if (hXmlDoc.xml == "") {
      hXmlDoc.load("c:\\temp\\History.xml");
    }
    
    switch (style) {
      
      case "ExerCount":
        hNode = hXmlDoc.selectSingleNode("//ExerInfo");
        var arrt=hNode.text.split("|");
        if (arrt[arrt.length-1]=="")
             nExecCount = hNode.text.split("|").length-1;
        else
             nExecCount = hNode.text.split("|").length;
          
        hNode = hXmlDoc.selectSingleNode("//Exercise");
        hNode.setAttribute("Total", nExecCount);
        
        break;
      case "ExerInfo":
        hNode = hXmlDoc.selectSingleNode("//ExerInfo");
        sTmp = hNode.text + '' + sAnswer;
        hNode.text = sTmp;
        
        break;
      case "Performance":
        hNode = hXmlDoc.selectSingleNode("//Exercise");
        hNode.setAttribute("TotalrightAns", iif(isset(nTotalrightAns), "0", nTotalrightAns));
        hNode.setAttribute("TotalWrongAns", iif(isset(nTotalWrongAns), "0", nTotalWrongAns));
        hNode.setAttribute("Total1stWrongAns", iif(isset(nTotal1stWrongAns), "0", nTotal1stWrongAns));
        hNode.setAttribute("Total2ndWrongAns", iif(isset(nTotal2ndWrongAns), "0", nTotal2ndWrongAns));
        hNode.setAttribute("Total3rdWrongAns", iif(isset(nTotal3rdWrongAns), "0", nTotal3rdWrongAns));
        
        break;
      case "RecordTime":
        hNode = hXmlDoc.selectSingleNode("//Time");
        hNode.setAttribute("LastTime", hour(new Date()) + '' + ":" + '' + minute(new Date()) + '' + ":" + '' + second(new Date()));
        hNode.setAttribute("SpendTime", Date.DateDiff("s", dStartTime, new Date()));
      /*  hNode.setAttribute("SpendTime", Date.DateDiff("s", dStartTime, time()));*/
        
        break;
      case "SubmitData":
        var bSubmited, ErrCount;
        ExerInfo = hXmlDoc.selectSingleNode("//ExerInfo").text;
        HisString = "?Exercise=" + '' + sCenterID + '' + "^" + '' + sInstructorID + '' + "^" + '' + sCourseType + '' + "^" + '' + sStudentID + '' + "^" + '' + sScheduleType + '' + "^" + '' + sAssignDate + '' + "^" + '' + sChapterID + '' + "^" + '' + sUnitID + '' + "^" + '' + sCurrFormatSN + '' + "^" + '' + ExerInfo;
        bSubmited = SubmitExerData(HisString);
        while (bSubmited == false) {
  if (MsgBox("传送数据失败，请检查网络连线状态，重试提交 ！。          ", vbYesNo, " IDIIL 提示") == vbYes) {
            bSubmited = SubmitExerData(HisString);
          } else {
            bSubmited = true;
          }
        }
        hNode = hXmlDoc.selectSingleNode("//Exercise");
          if(trim(hNode.getAttribute("Total")) == "" || trim(hNode.getAttribute("Total")) == "0")
            nTotalExercise=(parseInt(nTotalrightAns) + parseInt(nTotalWrongAns));
          else
            nTotalExercise=parseInt(hNode.getAttribute("Total"));

       /* nTotalExercise = iif(trim(hNode.getAttribute("Total")) == "", nTotalrightAns + nTotalWrongAns, hNode.getAttribute("Total"));*/
        if (hNode.getAttribute("TotalrightAns") !== "") {
          nTotalrightAns = parseInt(hNode.getAttribute("TotalrightAns"));
        } else {
          nTotalrightAns = 0;
        }
        if (hNode.getAttribute("TotalWrongAns") !== "") {
          nTotalWrongAns = parseInt(hNode.getAttribute("TotalWrongAns"));
        } else {
          nTotalWrongAns = 0;
        }
        if (hNode.getAttribute("Total1stWrongAns") !== "") {
          nTotal1stWrongAns = parseInt(hNode.getAttribute("Total1stWrongAns"));
        } else {
          nTotal1stWrongAns = 0;
        }
        if (hNode.getAttribute("Total2ndWrongAns") !== "") {
          nTotal2ndWrongAns = parseInt(hNode.getAttribute("Total2ndWrongAns"));
        } else {
          nTotal2ndWrongAns = 0;
        }
        if (hNode.getAttribute("Total3rdWrongAns") !== "") {
          nTotal3rdWrongAns = parseInt(hNode.getAttribute("Total3rdWrongAns"));
        } else {
          nTotal3rdWrongAns = 0;
        }
        if (hXmlDoc.selectSingleNode("//Time").getAttribute("SpendTime") !== "") {
          nSpendTime = parseInt(hXmlDoc.selectSingleNode("//Time").getAttribute("SpendTime"));
        } else {
          nSpendTime = 0;
        }
        HisString = "?Performance=" + '' + sCenterID + '' + "^" + '' + sInstructorID + '' + "^" + '' + sCourseType + '' + "^" + '' + sStudentID + '' + "^" + '' + sChapterID + '' + "^" + '' + sUnitID + '' + "^" + '' + nTotalExercise + '' + "^" + '' + nTotalrightAns + '' + "^" + '' + nTotalWrongAns + '' + "^" + '' + nTotal1stWrongAns + '' + "^" + '' + nTotal2ndWrongAns + '' + "^" + '' + nTotal3rdWrongAns + '' + "^" + '' + nSpendTime;
        bSubmited = SubmitExerData(HisString);
        while (bSubmited == false) {
  if (MsgBox("传送数据失败，请检查网络连线状态，重试提交 ！。          ", vbYesNo, " IDIIL 提示") == vbYes) {
            bSubmited = SubmitExerData(HisString);
          } else {
            bSubmited = true;
          }
        }
        hXmlDoc = null;
        return;
    } //SELENDJH;
  }
  hXmlDoc.save("c:\\temp\\History.xml");
  hXmlDoc = null;
}


function GotoNextFormatAI(){
    var getItem;
    if(ExerciseType=="S"){
        getItem=sessionStorage.getItem("UnitList");
    }else{
        getItem=sessionStorage.getItem("data");
    }
    var xmldoc=createXMLDoc();
    xmldoc.loadXML(getItem);
    var itemData=xmldoc;
    if(itemData){
        var item=$(itemData).find('Item[Status="doing"]')[0]||$(itemData).find('Item[Status=""]')[0];
        if(item){
            var strTempFormatID=$(item).attr('FormatID');
            if(ExerciseType=="S"){
                UnitID=$(item).attr('UnitID');
                ParentID=$(item).attr('ParentID');
                LevelIndex=$(item).attr('LevelIndex');
                location.replace(CenterWeb + '' + "/SYSTEM/ENGLISH/ESL/" + '' + strTempFormatID + '' + "/" + '' + strTempFormatID + '' + '.jsp?FormatID='+strTempFormatID+'&UnitID='+UnitID+'&ExerciseType='+ExerciseType+'&ParentID='+ParentID+'&LevelIndex='+LevelIndex+'&ExerType='+ExerType);

            }else{
                location.replace(CenterWeb + '' + "/SYSTEM/ENGLISH/ESL/" + '' + strTempFormatID + '' + "/" + '' + strTempFormatID + '' + '.jsp?FormatID='+strTempFormatID+'&ExerciseType='+ExerciseType+'&ParentID='+ParentID+'&MemberID='+MemberID+'&LevelIndex='+LevelIndex);

            }
        }else{
            var Score=0;
            var ScoreNum=0;
            $(itemData).find('Format').find('Result').each(function(index,item){
                ScoreNum +=1;
                var ScoreStr=parseInt($(item).attr('Score'));
                Score +=ScoreStr;
            })
            Score = Score/ScoreNum;
            KeyObj.Score=Score;
            storageSetObj("KeyObj",KeyObj)
            sessionStorage.setItem('Score',Score);
            sessionStorage.setItem('dgParentID',KeyObj.ParentID);
            if(ExerciseType=="S"){
                window.location.href=CenterWeb + '' +'/miniprogram/idiilzndc.html';
            }else{
                window.location.href=CenterWeb + '' +'/miniprogram/final.html'
            }

        }
    }
}

function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
}


function PreDownload() {
  var sNodeName, sGetPathPara, bExitFor, oTmpNode;
  oTmpXDom = createXMLDoc();
  oGroupNodes = xmldoc.selectNodes("//Group");
  
  // after predownloading resources, nDownGroup == oGroupNodes.length (nDownGroup == downloaded resources count)
  // TODO fix preloading, make sure to use DownLoad_FSCommand to increment counter
  
  if (nDownGroup > oGroupNodes.length - 1) {
    return;
  }
  oTmpXDom.appendChild( oGroupNodes[nDownGroup].cloneNode(true));
  oItemNodes = oTmpXDom.selectNodes("//*");
  sFile = "";
  for (var i = nDownInGroup; i <= oItemNodes.length - 1; i++) {
    sNodeName = oItemNodes[i].baseName;
    if (InStr(1, sNodeName, "MovieID") != 0) {
      if ( oItemNodes[i].text !== "") {
        sFile = sFile + '' + "|" + '' + getPath( oItemNodes[i].text, "M");
        nDownInGroup = i;
        nDownItemAttrib = 0;
      }
    } else if (InStr(1, sNodeName, "SoundID") != 0) {
      if ( oItemNodes[i].text !== "") {
        sFile = sFile + '' + "|" + '' + getPath( oItemNodes[i].text, "S");
        nDownInGroup = i;
        nDownItemAttrib = 0;
      }
    }
    for (j = nDownItemAttrib; j <= oItemNodes[i].attributes.length - 1; j++) {
      sNodeName = oItemNodes[i].attributes[j].nodename;
      if (InStr(1, sNodeName, "MovieID") != 0) {
        if ( oItemNodes[i].attributes[j].nodeValue !== "") {
          sFile = sFile + '' + "|" + '' + getPath( oItemNodes[i].attributes[j].nodeValue, "M");
          nDownInGroup = i;
          nDownItemAttrib = j;
        }
      } else if (InStr(1, sNodeName, "SoundID") != 0) {
        if ( oItemNodes[i].attributes[j].nodeValue !== "") {
          sFile = sFile + '' + "|" + '' + getPath( oItemNodes[i].attributes[j].nodeValue, "S");
          nDownInGroup = i;
          nDownItemAttrib = j;
        }
      }
    }
  }
  if (sFile.length == 0 || sFile == "") {
    DownInGroup = i;
    nDownItemAttrib = j;
  } else {
    sFile = Mid(sFile, 2);
  }
  DownLoad.SetVariable("MovieSrc", sFile);
  DownLoad.Play();
  
  // FIXME
  // force downloaded resource count to be xml <Group> nodes count (resources)
  nDownGroup = oGroupNodes.length + 1;
}

new idiil.ui.media.SWFObject.FSCommand("DownLoad", DownLoad_FSCommand);
function DownLoad_FSCommand(cmd, arg) {
  if (cmd == "finish") {}
}
function iif(Expression, fstResult, sndResult) {
  var function_result = null;
  if (Expression) {
    function_result = fstResult;
  } else {
    function_result = sndResult;
  }
  return function_result;
}
function PopMessage(sMsg) {
  MsgBox(sMsg + '' + str_pad("", 10), vbInformation, " IDIIL 提示");
}
function ShowPrompt(ShowID) {
  return;
  if (divPrompt.getAttribute("ShowPromptID") == ShowID) {
    return;
  }
  var ee, x=0, y=0;

  // TODO i18n
  var modes = {
  'Record': "录音",
  'Stop': "停止",
  'Submit': "提交",
  'submit': "提交",
  'Replay': "重播",
  'RePlay': "重播",
  'Back': "后退",
  'Forward': "往前",
  'Chinese': "中文",
  'Hel': "帮助",
  'Dict': "字典"
  };
  if (ShowID !== "") {
    ee = document.getElementById("td" + '' + ShowID + '' + "2");

// fixed broken code
    do {
      x += ee.offsetLeft || 0;
      y += ee.offsetTop || 0;
      ee = ee.offsetParent;
    } while (ee);

// faster and more reliable
//    var bound = ee.getBoundingClientRect();
//    x = window.pageXOffset + bound.left; y = window.pageYOffset + bound.top;

// pixel offset
    divPrompt.style.left = x + 10 + 'px';
    divPrompt.style.top = y + 2 + 'px';
    divPrompt.innerHTML = modes[ShowID];
    divPrompt.style.visibility = "visible";
    divPrompt.setAttribute("ShowPromptID", ShowID);
  } else {
    divPrompt.style.visibility = "hidden";
    divPrompt.setAttribute("ShowPromptID", "");
  }
}

</script>

<script  type="text/javascript">
	document.write('<script src="/SYSTEM/ENGLISH/ESL/AudioCtrl_HTML5.js?"'+new Date().getTime()+'><\/script>');
   // document.write('<script src="/GAMEFILES/js/createjs-2015.11.26.min.js?"'+new Date().getTime()+'><\/script>');
    //document.write('<script src="./preloadSound.js?"'+new Date().getTime()+'><\/script>');

</script>


  <script src="../../../../GAMEFILES/js/jquery-1.9.1.js"></script>
  <script src="../../../../GAMEFILES/js/createjs-2015.11.26.min.js"></script>
  <script src="../../../../GAMEFILES/js/xmlToJson.js"></script>
  <script src="../../../../GAMEFILES/js/mobile_adaptation_1.js"></script>
  <script src="../../../../GAMEFILES/js/classCommen.js"></script>
<script type="text/javascript">

/* const: */ var FORMATID = "004";
/* const: */ var MaxDownTime = 150000;
/* const: */ var SecPerWord = 10;
var UnitDoc, xmldoc,rNodes;
UnitDoc = createXMLDoc();
UnitDoc.async = false;
xmldoc = createXMLDoc();
xmldoc.async = false;
var sCurrentFormatSN ='';
var Timer1;
window._onload=Window_onload;
function Window_onload() {
  var xmlhttp, sDoc;
  var var1;
  UnitDoc =  getUnitContent(sChapterID, sUnitID, sMainWeb);
  nTotalFormat = UnitDoc.documentElement.selectNodes("Format").length;
   getRecoverInfo(sCurrFormatSN, var1, var1, var1);
  sCurrentFormatSN = byref_tmp[0];
  xmlhttp = new XMLHttpRequest();
  sDoc = createXMLDoc();
  var oXML=UnitDoc.documentElement.selectSingleNode("Format[@FormatID='" + '' + FORMATID + '' + "' and @FormatSN='" + '' + sCurrFormatSN + '' + "']").xml.replace(/[\r\n]/g, "").replace(/>\s+</g, "><")
  sDoc.loadXML(oXML);
  xmldoc =  getFormatContent(sChapterID, sUnitID, FORMATID, sCurrFormatSN, "002", sMainWeb, sDoc);
  rNodes = xmldoc.documentElement.selectSingleNode("Format[@FormatID='" + '' + FORMATID + '' + "' and @FormatSN='" + '' + sCurrFormatSN + '' + "']").selectNodes("Group");

  wordJson=xmltojson(xmldoc);
  CheckDownLoad();
}

  var wordJson,WordArr=[],WordArr_temp=[],RightWords=[],Exers=[],testWords,rightAnswers;
  function CheckDownLoad() {
    for(var i=0;i<wordJson.root.Format.Group.length;i++){
    WordArr[i]=i;
    }
    WordArr_temp=WordArr.slice();
    RightWords=reArr(wordJson.root.Format.Group.slice());
    testWords=RightWords.slice();
    rightAnswers=RightWords.slice();
    init();
  }

  function creatExerNew(index){
  WordArr_temp=WordArr.slice();
  var newExer=[];
  newExer[0]=rightAnswers[index].GroupSN-1;
  var testWordID=wordJson.root.Format.Group[newExer[0]].WordID;
  var tempArr=[];
  tempArr.push(testWordID);
  for (var i = 1; i < 4; i++) {
      var j = Math.floor(Math.random() * WordArr_temp.length);
         var tempStr=wordJson.root.Format.Group[WordArr_temp[j]].WordID;
         if(tempArr.indexOf(tempStr)<0){
            newExer[i] = WordArr_temp[j];
            tempArr.push(tempStr);
         }else{
            i--;
         }
      WordArr_temp.splice(j, 1);
  }
  newExer=reArr(newExer);
  Exers[index]=newExer;
  return newExer;
  }

</script>
<script src="../../../../GAMEFILES/js/balloon.js"></script>
<script src="../../../../GAMEFILES/js/brand.js"></script>
<script src="../../../../GAMEFILES/js/brandTxt.js"></script>
<script src="js/004.js"></script>
<script src="../../../../GAMEFILES/js/recordCtrl.js"></script>

</body>
</html>

