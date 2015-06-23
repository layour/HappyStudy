//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.ExerciseTopicController');
com.layou.study.ExerciseTopicController = function() {
    com.layou.study.ExerciseTopicController.initializeBase(this);
    this.initialize();
}
function com$layou$study$ExerciseTopicController$initialize(){
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

var exerciseTopic = new Object();
    
function com$layou$study$ExerciseTopicController$evaljs(js){
    eval(js)
}
function com$layou$study$ExerciseTopicController$closeExerciseTopic(sender, args){
	$view.close();
}
function com$layou$study$ExerciseTopicController$loadTopicFlipper(sender, args){
	var data = $param.getJSONObject("toticData");
	exerciseTopic.topicTotal = data.total;
	exerciseTopic.topicIndex = 0;
	exerciseTopic.topicRows = data.rows;
	settingTopicInfo();
}
function settingTopicInfo(){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	//更新题目数
	$id("imagebutton1").set("value", exerciseTopic.topicIndex + 1 + "/" + exerciseTopic.topicTotal);
	//更新收藏信息
	var collect = exerciseTopic.topicRows[exerciseTopic.topicIndex].collect;
	if(collect == 'true'){
		$id("imagebutton2").set("value", "已收藏");
	} else {
		$id("imagebutton2").set("value", "收藏");
	}
	if(flipperIndex == 0){
		//更新题目信息
		$id("label6").set("value", exerciseTopic.topicRows[exerciseTopic.topicIndex].topic);
		var answerArray = exerciseTopic.topicRows[exerciseTopic.topicIndex].answer.split("##");
		if(answerArray.length == 2){
			$id("label7").set("value", answerArray[0]);
			$id("label8").set("value", answerArray[1]);
			$id("panel9").set("display", "none");
			$id("panel10").set("display", "none");
		} else if(answerArray.length == 4){
			$id("label7").set("value", answerArray[0]);
			$id("label8").set("value", answerArray[1]);
			$id("label9").set("value", answerArray[2]);
			$id("label10").set("value", answerArray[3]);
		}
		//更新答案详解
		$id("label17").set("value", exerciseTopic.topicRows[exerciseTopic.topicIndex].analysis);
	} else if(flipperIndex == 1){
		//更新题目信息
		$id("label1").set("value", exerciseTopic.topicRows[exerciseTopic.topicIndex].topic);
		var answerArray = exerciseTopic.topicRows[exerciseTopic.topicIndex].answer.split("##");
		if(answerArray.length == 2){
			$id("label2").set("value", answerArray[0]);
			$id("label3").set("value", answerArray[1]);
			$id("panel5").set("display", "none");
			$id("panel6").set("display", "none");
		} else if(answerArray.length == 4){
			$id("label2").set("value", answerArray[0]);
			$id("label3").set("value", answerArray[1]);
			$id("label4").set("value", answerArray[2]);
			$id("label5").set("value", answerArray[3]);
		}
		//更新答案详解
		$id("label18").set("value", exerciseTopic.topicRows[exerciseTopic.topicIndex].analysis);
	} else if(flipperIndex == 2){
		//更新题目信息
		$id("label11").set("value", exerciseTopic.topicRows[exerciseTopic.topicIndex].topic);
		var answerArray = exerciseTopic.topicRows[exerciseTopic.topicIndex].answer.split("##");
		if(answerArray.length == 2){
			$id("label12").set("value", answerArray[0]);
			$id("label13").set("value", answerArray[1]);
			$id("panel13").set("display", "none");
			$id("panel14").set("display", "none");
		} else if(answerArray.length == 4){
			$id("label12").set("value", answerArray[0]);
			$id("label13").set("value", answerArray[1]);
			$id("label14").set("value", answerArray[2]);
			$id("label15").set("value", answerArray[3]);
		}
		//更新答案详解
		$id("label16").set("value", exerciseTopic.topicRows[exerciseTopic.topicIndex].analysis);
	}
}
function com$layou$study$ExerciseTopicController$showAnalysis(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	var valueAnalysis = $id("imagebutton0").get("value");
	if(flipperIndex == 0){
		if(valueAnalysis == "详解"){
			$id("label17").set("display", "block");
			$id("imagebutton0").set("value", "收起");
		} else {
			$id("label17").set("display", "none");
			$id("imagebutton0").set("value", "详解");
		}
	} else if(flipperIndex == 1){
		if(valueAnalysis == "详解"){
			$id("label18").set("display", "block");
			$id("imagebutton0").set("value", "收起");
		} else {
			$id("label18").set("display", "none");
			$id("imagebutton0").set("value", "详解");
		}
	} else if(flipperIndex == 2){
		if(valueAnalysis == "详解"){
			$id("label16").set("display", "block");
			$id("imagebutton0").set("value", "收起");
		} else {
			$id("label16").set("display", "none");
			$id("imagebutton0").set("value", "详解");
		}
	}
}
function com$layou$study$ExerciseTopicController$selectA(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		var selectA = $id("checkbox4").getAttribute("checked");
		if(selectA == "false"){
			$id("checkbox4").setAttribute("checked", "true");
		}
		$id("checkbox5").setAttribute("checked", "false");
		$id("checkbox6").setAttribute("checked", "false");
		$id("checkbox7").setAttribute("checked", "false");
	} else if(flipperIndex == 1){
		var selectA = $id("checkbox0").getAttribute("checked");
		if(selectA == "false"){
			$id("checkbox0").setAttribute("checked", "true");
		}
		$id("checkbox1").setAttribute("checked", "false");
		$id("checkbox2").setAttribute("checked", "false");
		$id("checkbox3").setAttribute("checked", "false");
	} else if(flipperIndex == 2){
		var selectA = $id("checkbox8").getAttribute("checked");
		if(selectA == "false"){
			$id("checkbox8").setAttribute("checked", "true");
		}
		$id("checkbox9").setAttribute("checked", "false");
		$id("checkbox10").setAttribute("checked", "false");
		$id("checkbox11").setAttribute("checked", "false");
	}
}
function com$layou$study$ExerciseTopicController$selectB(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		$id("checkbox4").setAttribute("checked", "false");
		var selectB = $id("checkbox5").getAttribute("checked");
		if(selectB == "false"){
			$id("checkbox5").setAttribute("checked", "true");
		}
		$id("checkbox6").setAttribute("checked", "false");
		$id("checkbox7").setAttribute("checked", "false");
	} else if(flipperIndex == 1){
		$id("checkbox0").setAttribute("checked", "false");
		var selectB = $id("checkbox1").getAttribute("checked");
		if(selectB == "false"){
			$id("checkbox1").setAttribute("checked", "true");
		}
		$id("checkbox2").setAttribute("checked", "false");
		$id("checkbox3").setAttribute("checked", "false");
	} else if(flipperIndex == 2){
		$id("checkbox8").setAttribute("checked", "false");
		var selectB = $id("checkbox9").getAttribute("checked");
		if(selectB == "false"){
			$id("checkbox9").setAttribute("checked", "true");
		}
		$id("checkbox10").setAttribute("checked", "false");
		$id("checkbox11").setAttribute("checked", "false");
	}
}
function com$layou$study$ExerciseTopicController$selectC(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		$id("checkbox4").setAttribute("checked", "false");
		$id("checkbox5").setAttribute("checked", "false");
		var selectC = $id("checkbox6").getAttribute("checked");
		if(selectC == "false"){
			$id("checkbox6").setAttribute("checked", "true");
		}
		$id("checkbox7").setAttribute("checked", "false");
	} else if(flipperIndex == 1){
		$id("checkbox0").setAttribute("checked", "false");
		$id("checkbox1").setAttribute("checked", "false");
		var selectC = $id("checkbox2").getAttribute("checked");
		if(selectC == "false"){
			$id("checkbox2").setAttribute("checked", "true");
		}
		$id("checkbox3").setAttribute("checked", "false");
	} else if(flipperIndex == 2){
		$id("checkbox8").setAttribute("checked", "false");
		$id("checkbox9").setAttribute("checked", "false");
		var selectC = $id("checkbox10").getAttribute("checked");
		if(selectC == "false"){
			$id("checkbox10").setAttribute("checked", "true");
		}
		$id("checkbox11").setAttribute("checked", "false");
	}
}
function com$layou$study$ExerciseTopicController$selectD(sender, args){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		$id("checkbox4").setAttribute("checked", "false");
		$id("checkbox5").setAttribute("checked", "false");
		$id("checkbox6").setAttribute("checked", "false");
		var selectD = $id("checkbox7").getAttribute("checked");
		if(selectD == "false"){
			$id("checkbox7").setAttribute("checked", "true");
		}
	} else if(flipperIndex == 1){
		$id("checkbox0").setAttribute("checked", "false");
		$id("checkbox1").setAttribute("checked", "false");
		$id("checkbox2").setAttribute("checked", "false");
		var selectC = $id("checkbox3").getAttribute("checked");
		if(selectC == "false"){
			$id("checkbox3").setAttribute("checked", "true");
		}
	} else if(flipperIndex == 2){
		$id("checkbox8").setAttribute("checked", "false");
		$id("checkbox9").setAttribute("checked", "false");
		$id("checkbox10").setAttribute("checked", "false");
		var selectD = $id("checkbox11").getAttribute("checked");
		if(selectD == "false"){
			$id("checkbox11").setAttribute("checked", "true");
		}
	}
}
function com$layou$study$ExerciseTopicController$loadNextTopicFlipper(sender, args){
	//判断详解状态
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		var display = $id("label17").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	} else if(flipperIndex == 1){
		var display = $id("label18").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	} else if(flipperIndex == 2){
		var display = $id("label16").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	}
	//加载新题目信息
	if(exerciseTopic.topicIndex + 1 < exerciseTopic.topicTotal){
		exerciseTopic.topicIndex = exerciseTopic.topicIndex + 1;
		settingTopicInfo();
	}
}
function com$layou$study$ExerciseTopicController$loadProviousTopicFlipper(sender, args){
	//判断详解状态
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	if(flipperIndex == 0){
		var display = $id("label17").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	} else if(flipperIndex == 1){
		var display = $id("label18").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	} else if(flipperIndex == 2){
		var display = $id("label16").get("display");
		if(display == "none"){
			$id("imagebutton0").set("value", "详解");
		} else {
			$id("imagebutton0").set("value", "收起");
		}
	}
	//加载新题目信息
	if(exerciseTopic.topicIndex - 1 >= 0){
		exerciseTopic.topicIndex = exerciseTopic.topicIndex - 1;
		settingTopicInfo();
	}
}
function com$layou$study$ExerciseTopicController$collectTopic(sender, args){
	//var collectFlag = $id("imagebutton2").get("value");
	var collect = exerciseTopic.topicRows[exerciseTopic.topicIndex].collect;
	var topicId = exerciseTopic.topicRows[exerciseTopic.topicIndex].topicId;
	var userId = $ctx.getApp("userId");
	if(collect == "false"){
		var params = "?userId=" + userId + "&topicId=" + topicId;
		$service.get({
			"url" : "http://10.2.112.33:8080/HappyStudyServer/collect/mobileSave" + params,
			"callback" : "collectTopicCallback()",
			"timeout" : "5"//可选参数，超时时间，单位为秒
		});
	} else {
		var params = "?userId=" + userId + "&topicId=" + topicId;
		$service.get({
			"url" : "http://10.2.112.33:8080/HappyStudyServer/collect/mobileDelete" + params,
			"callback" : "reCollectTopicCallback()",
			"timeout" : "5"//可选参数，超时时间，单位为秒
		});
	}
}
function collectTopicCallback(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	if(com.layou.study.GlobalUtil.isEmptyString(result)){
		$alert("收藏超时");
		return;
	}
	result = $stringToJSON(result);//将字符串转换成JSON对象
	if('0' == result.code){
		$id("imagebutton2").set("value", "已收藏");
		exerciseTopic.topicRows[exerciseTopic.topicIndex].collect = "true";
		$toast("收藏成功");
	} else {
		$alert("收藏失败");
	}
}
function reCollectTopicCallback(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	if(com.layou.study.GlobalUtil.isEmptyString(result)){
		$alert("收藏超时");
		return;
	}
	result = $stringToJSON(result);//将字符串转换成JSON对象
	if('0' == result.code){
		$id("imagebutton2").set("value", "收藏");
		exerciseTopic.topicRows[exerciseTopic.topicIndex].collect = "false";
		$toast("取消成功");
	} else {
		$alert("取消失败");
	}
}
com.layou.study.ExerciseTopicController.prototype = {
    collectTopic : com$layou$study$ExerciseTopicController$collectTopic,
    loadProviousTopicFlipper : com$layou$study$ExerciseTopicController$loadProviousTopicFlipper,
    loadNextTopicFlipper : com$layou$study$ExerciseTopicController$loadNextTopicFlipper,
    selectD : com$layou$study$ExerciseTopicController$selectD,
    selectC : com$layou$study$ExerciseTopicController$selectC,
    selectB : com$layou$study$ExerciseTopicController$selectB,
    selectA : com$layou$study$ExerciseTopicController$selectA,
    showAnalysis : com$layou$study$ExerciseTopicController$showAnalysis,
    loadTopicFlipper : com$layou$study$ExerciseTopicController$loadTopicFlipper,
    closeExerciseTopic : com$layou$study$ExerciseTopicController$closeExerciseTopic,
    initialize : com$layou$study$ExerciseTopicController$initialize,
    evaljs : com$layou$study$ExerciseTopicController$evaljs
};
com.layou.study.ExerciseTopicController.registerClass('com.layou.study.ExerciseTopicController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
