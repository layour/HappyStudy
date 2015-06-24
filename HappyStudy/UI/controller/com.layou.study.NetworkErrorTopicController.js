//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.NetworkErrorTopicController');
com.layou.study.NetworkErrorTopicController = function() {
    com.layou.study.NetworkErrorTopicController.initializeBase(this);
    this.initialize();
}
function com$layou$study$NetworkErrorTopicController$initialize(){
    //you can programing by $ctx API
    //get the context data through $ctx.get()
    //set the context data through $ctx.push(json)
    //set the field of the context through $ctx.put(fieldName, fieldValue)
    //get the parameter of the context through $ctx.param(parameterName)
    //Demo Code:
    //    var str = $ctx.getString();      //获取当前Context对应的字符串
    //    alert($ctx.getString())          //alert当前Context对应的字符串
    //    var json = $ctx.getJSONObject(); //获取当前Context，返回值为json
    //    json["x"] = "a";        //为当前json增加字段
    //    json["y"] = [];           //为当前json增加数组
    //    $ctx.push(json);            //设置context，并自动调用数据绑定
    //    
    //    put方法需手动调用databind()
    //    var x = $ctx.get("x");    //获取x字段值
    //    $ctx.put("x", "b");     //设置x字段值
    //    $ctx.put("x", "b");     //设置x字段值
    //    $ctx.databind();            //调用数据绑定才能将修改的字段绑定到控件上
    //    var p1 = $param.getString("p1");   //获取参数p2的值，返回一个字符串
    //    var p2 = $param.getJSONObject("p2");   //获取参数p3的值，返回一个JSON对象
    //    var p3 = $param.getJSONArray("p3");   //获取参数p1的值，返回一个数组
    
    //your initialize code below...
    
}

//定义查询题目结果对象
var errorTopic = new Object();
    
function com$layou$study$NetworkErrorTopicController$evaljs(js){
    eval(js)
}
function com$layou$study$NetworkErrorTopicController$closeNetworkErrorTopic(sender, args){
	$view.close();
}
function com$layou$study$NetworkErrorTopicController$loadTopicFlipper(sender, args){
	var data = $param.getJSONObject("toticData");
	errorTopic.topicTotal = data.total;
	errorTopic.topicIndex = 0;
	errorTopic.topicRows = data.rows;
	settingTopicInfo();
}
function settingTopicInfo(){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	//更新题目数
	$id("imagebutton1").set("value", errorTopic.topicIndex + 1 + "/" + errorTopic.topicTotal);
	if(flipperIndex == 0){
		//更新题目信息
		$id("label1").set("value", errorTopic.topicRows[errorTopic.topicIndex].topic);
		var answerArray = errorTopic.topicRows[errorTopic.topicIndex].answer.split("##");
		if(answerArray.length == 2){
			$id("label2").set("value", answerArray[0]);
			$id("label3").set("value", answerArray[1]);
			$id("panel3").set("display", "none");
			$id("panel4").set("display", "none");
		} else if(answerArray.length == 4){
			$id("label2").set("value", answerArray[0]);
			$id("label3").set("value", answerArray[1]);
			$id("label4").set("value", answerArray[2]);
			$id("label5").set("value", answerArray[3]);
		}
		//更新答案详解
		$id("label6").set("value", errorTopic.topicRows[errorTopic.topicIndex].analysis);
	} else if(flipperIndex == 1){
		//更新题目信息
		$id("label7").set("value", errorTopic.topicRows[errorTopic.topicIndex].topic);
		var answerArray = errorTopic.topicRows[errorTopic.topicIndex].answer.split("##");
		if(answerArray.length == 2){
			$id("label8").set("value", answerArray[0]);
			$id("label9").set("value", answerArray[1]);
			$id("panel8").set("display", "none");
			$id("panel9").set("display", "none");
		} else if(answerArray.length == 4){
			$id("label8").set("value", answerArray[0]);
			$id("label9").set("value", answerArray[1]);
			$id("label10").set("value", answerArray[2]);
			$id("label11").set("value", answerArray[3]);
		}
		//更新答案详解
		$id("label12").set("value", errorTopic.topicRows[errorTopic.topicIndex].analysis);
	} else if(flipperIndex == 2){
		//更新题目信息
		$id("label13").set("value", errorTopic.topicRows[errorTopic.topicIndex].topic);
		var answerArray = errorTopic.topicRows[errorTopic.topicIndex].answer.split("##");
		if(answerArray.length == 2){
			$id("label14").set("value", answerArray[0]);
			$id("label15").set("value", answerArray[1]);
			$id("panel13").set("display", "none");
			$id("panel14").set("display", "none");
		} else if(answerArray.length == 4){
			$id("label14").set("value", answerArray[0]);
			$id("label15").set("value", answerArray[1]);
			$id("label16").set("value", answerArray[2]);
			$id("label17").set("value", answerArray[3]);
		}
		//更新答案详解
		$id("label18").set("value", errorTopic.topicRows[errorTopic.topicIndex].analysis);
	}
}
function com$layou$study$NetworkErrorTopicController$loadProviousTopicFlipper(sender, args){
	//判断详解状态
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		var display = $id("label6").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	} else if(flipperIndex == 1){
		var display = $id("label12").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	} else if(flipperIndex == 2){
		var display = $id("label18").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	}
	//加载新题目信息
	if(errorTopic.topicIndex - 1 >= 0){
		errorTopic.topicIndex = errorTopic.topicIndex - 1;
		settingTopicInfo();
	}
}
function com$layou$study$NetworkErrorTopicController$loadNextTopicFlipper(sender, args){
	//判断详解状态
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		var display = $id("label6").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	} else if(flipperIndex == 1){
		var display = $id("label12").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	} else if(flipperIndex == 2){
		var display = $id("label18").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	}
	//加载新题目信息
	if(errorTopic.topicIndex + 1 < errorTopic.topicTotal){
		errorTopic.topicIndex = errorTopic.topicIndex + 1;
		settingTopicInfo();
	}
}
function com$layou$study$NetworkErrorTopicController$showAnalysis(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	var valueAnalysis = $id("imagebutton0").get("value");
	if(flipperIndex == 0){
		if(valueAnalysis == "详解"){
			$id("label6").set("display", "block");
			$id("imagebutton0").set("value", "收起");
		} else {
			$id("label6").set("display", "none");
			$id("imagebutton0").set("value", "详解");
		}
	} else if(flipperIndex == 1){
		if(valueAnalysis == "详解"){
			$id("label12").set("display", "block");
			$id("imagebutton0").set("value", "收起");
		} else {
			$id("label12").set("display", "none");
			$id("imagebutton0").set("value", "详解");
		}
	} else if(flipperIndex == 2){
		if(valueAnalysis == "详解"){
			$id("label18").set("display", "block");
			$id("imagebutton0").set("value", "收起");
		} else {
			$id("label18").set("display", "none");
			$id("imagebutton0").set("value", "详解");
		}
	}
}
function com$layou$study$NetworkErrorTopicController$selectA(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		var selectA = $id("checkbox0").getAttribute("checked");
		if(selectA == "false"){
			$id("checkbox0").set("checked", "true");
		}
		$id("checkbox1").set("checked", "false");
		$id("checkbox2").set("checked", "false");
		$id("checkbox3").set("checked", "false");
	} else if(flipperIndex == 1){
		var selectA = $id("checkbox4").getAttribute("checked");
		if(selectA == "false"){
			$id("checkbox4").set("checked", "true");
		}
		$id("checkbox5").set("checked", "false");
		$id("checkbox6").set("checked", "false");
		$id("checkbox7").set("checked", "false");
	} else if(flipperIndex == 2){
		var selectA = $id("checkbox8").getAttribute("checked");
		if(selectA == "false"){
			$id("checkbox8").set("checked", "true");
		}
		$id("checkbox9").set("checked", "false");
		$id("checkbox10").set("checked", "false");
		$id("checkbox11").set("checked", "false");
	}
}
function com$layou$study$NetworkErrorTopicController$selectB(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		$id("checkbox0").set("checked", "false");
		var selectB = $id("checkbox1").getAttribute("checked");
		if(selectB == "false"){
			$id("checkbox1").set("checked", "true");
		}
		$id("checkbox2").set("checked", "false");
		$id("checkbox3").set("checked", "false");
	} else if(flipperIndex == 1){
		$id("checkbox4").set("checked", "false");
		var selectB = $id("checkbox5").getAttribute("checked");
		if(selectB == "false"){
			$id("checkbox5").set("checked", "true");
		}
		$id("checkbox6").set("checked", "false");
		$id("checkbox7").set("checked", "false");
	} else if(flipperIndex == 2){
		$id("checkbox8").set("checked", "false");
		var selectB = $id("checkbox9").getAttribute("checked");
		if(selectB == "false"){
			$id("checkbox9").set("checked", "true");
		}
		$id("checkbox10").set("checked", "false");
		$id("checkbox11").set("checked", "false");
	}
}
function com$layou$study$NetworkErrorTopicController$selectC(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		$id("checkbox0").set("checked", "false");
		$id("checkbox1").set("checked", "false");
		var selectC = $id("checkbox2").getAttribute("checked");
		if(selectC == "false"){
			$id("checkbox2").set("checked", "true");
		}
		$id("checkbox3").set("checked", "false");
	} else if(flipperIndex == 1){
		$id("checkbox4").set("checked", "false");
		$id("checkbox5").set("checked", "false");
		var selectC = $id("checkbox6").getAttribute("checked");
		if(selectC == "false"){
			$id("checkbox6").set("checked", "true");
		}
		$id("checkbox7").set("checked", "false");
	} else if(flipperIndex == 2){
		$id("checkbox8").set("checked", "false");
		$id("checkbox9").set("checked", "false");
		var selectC = $id("checkbox10").getAttribute("checked");
		if(selectC == "false"){
			$id("checkbox10").set("checked", "true");
		}
		$id("checkbox11").set("checked", "false");
	}
}
function com$layou$study$NetworkErrorTopicController$selectD(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		$id("checkbox0").set("checked", "false");
		$id("checkbox1").set("checked", "false");
		$id("checkbox2").set("checked", "false");
		var selectD = $id("checkbox3").getAttribute("checked");
		if(selectD == "false"){
			$id("checkbox3").set("checked", "true");
		}
	} else if(flipperIndex == 1){
		$id("checkbox4").set("checked", "false");
		$id("checkbox5").set("checked", "false");
		$id("checkbox6").set("checked", "false");
		var selectC = $id("checkbox7").getAttribute("checked");
		if(selectC == "false"){
			$id("checkbox7").set("checked", "true");
		}
	} else if(flipperIndex == 2){
		$id("checkbox8").set("checked", "false");
		$id("checkbox9").set("checked", "false");
		$id("checkbox10").set("checked", "false");
		var selectD = $id("checkbox11").getAttribute("checked");
		if(selectD == "false"){
			$id("checkbox11").set("checked", "true");
		}
	}
}
com.layou.study.NetworkErrorTopicController.prototype = {
    selectD : com$layou$study$NetworkErrorTopicController$selectD,
    selectC : com$layou$study$NetworkErrorTopicController$selectC,
    selectB : com$layou$study$NetworkErrorTopicController$selectB,
    selectA : com$layou$study$NetworkErrorTopicController$selectA,
    showAnalysis : com$layou$study$NetworkErrorTopicController$showAnalysis,
    loadNextTopicFlipper : com$layou$study$NetworkErrorTopicController$loadNextTopicFlipper,
    loadProviousTopicFlipper : com$layou$study$NetworkErrorTopicController$loadProviousTopicFlipper,
    loadTopicFlipper : com$layou$study$NetworkErrorTopicController$loadTopicFlipper,
    closeNetworkErrorTopic : com$layou$study$NetworkErrorTopicController$closeNetworkErrorTopic,
    initialize : com$layou$study$NetworkErrorTopicController$initialize,
    evaljs : com$layou$study$NetworkErrorTopicController$evaljs
};
com.layou.study.NetworkErrorTopicController.registerClass('com.layou.study.NetworkErrorTopicController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
