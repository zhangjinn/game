/**
 * Created by zhangjinjin on 2018/2/6.
 */
//-----濡傛灉鏄瓧绗︿覆褰㈠紡 鍏堣皟鐢ㄦ鏂规硶杩涜杞崲
function loadXml(str) {
    if (str == null) {
        return null;
    }
    var doc = str;
    try{
        doc = createXMLDOM();
        doc.async = false;
        doc.loadXML(str);
    }catch(e){
        doc = $.parseXML(str);
    }
    return doc;
}

/**
 *xml瀵硅薄杞琷son瀵硅薄
 *xmlObj:xml瀵硅薄
 *nodename:鑺傜偣璺緞('ROOT/ITEM')
 *isarray:true,寮哄埗杩斿洖鏁扮粍瀵硅薄
 **/
function xmltojson(xmlObj,nodename,isarray){

    var obj=$(xmlObj);
    var itemobj={};
    var nodenames="";
    var getAllAttrs=function(node){//閫掑綊瑙ｆ瀽xml 杞崲鎴恓son瀵硅薄
        var _itemobj={};
        var notNull=false;
        var nodechilds=node.childNodes;
        var childlenght=nodechilds.length;
        var _attrs=node.attributes;
        var firstnodeName="#text";
        try{
            firstnodeName=nodechilds[0].nodeName;
        }catch(e){}
        if((childlenght>0&&firstnodeName!="#text")||_attrs.length>0){
            var _childs=nodechilds;
            var _childslength=nodechilds.length;
            var _fileName_="";
            if(undefined!=_attrs){
                var _attrslength=_attrs.length;
                for(var i=0; i<_attrslength; i++){//瑙ｆ瀽xml鑺傜偣灞炴€�
                    var attrname=_attrs[i].nodeName;
                    var attrvalue=_attrs[i].nodeValue;
                    _itemobj[attrname]=attrvalue;
                }
            }
            for (var j = 0; j < _childslength; j++) {//瑙ｆ瀽xml瀛愯妭鐐�
                var _node = _childs[j];
                var _fildName = _node.nodeName;
                if("#text"==_fildName){break;};
                if(_itemobj[_fildName]!=undefined){//濡傛灉鏈夐噸澶嶇殑鑺傜偣闇€瑕佽浆涓烘暟缁勬牸寮�
                    if(!(_itemobj[_fildName] instanceof Array)){
                        var a=_itemobj[_fildName];
                        _itemobj[_fildName]=[a];//濡傛灉璇ヨ妭鐐瑰嚭鐜板ぇ浜庝竴涓殑鎯呭喌 鎶婄涓€涓殑鍊煎瓨鏀惧埌鏁扮粍涓�
                    }
                }
                var _fildValue=getAllAttrs(_node);
                try{
                    _itemobj[_fildName].push(_fildValue);
                }catch(e){
                    _itemobj[_fildName]=_fildValue;
                    _itemobj["length"]=1;
                }
            }
        }else{
            _itemobj=(node.textContent==undefined)?node.text:node.textContent;
        }
        return _itemobj;
    };
    if(nodename){
        nodenames=nodename.split("/")
    }
    for(var i=0;i<nodenames.length;i++){
        obj=obj.find(nodenames[i]);
    }
    $(obj).each(function(key,item){
        if(itemobj[item.nodeName]!=undefined){
            if(!(itemobj[item.nodeName] instanceof Array)){
                var a=itemobj[item.nodeName];
                itemobj[item.nodeName]=[a];
            }
            itemobj[item.nodeName].push(getAllAttrs(item));
        }else{
            if(nodenames.length>0){
                itemobj[item.nodeName]=getAllAttrs(item);
            }else{
                itemobj[item.firstChild.nodeName]=getAllAttrs(item.firstChild);
            }
        }
    });
    if(nodenames.length>1){
        itemobj=itemobj[nodenames[nodenames.length-1]];
    }
    if(isarray&&!(itemobj instanceof Array)&&itemobj!=undefined){
        itemobj=[itemobj];
    }
    return itemobj;
}