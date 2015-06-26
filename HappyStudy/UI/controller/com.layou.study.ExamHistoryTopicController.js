//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.ExamHistoryTopicController');
com.layou.study.ExamHistoryTopicController = function() {
    com.layou.study.ExamHistoryTopicController.initializeBase(this);
    this.initialize();
}
function com$layou$study$ExamHistoryTopicController$initialize(){
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
var examHistoryTopic = new Object();
    
function com$layou$study$ExamHistoryTopicController$evaljs(js){
    eval(js)
}
function com$layou$study$ExamHistoryTopicController$closeExamHistoryTopic(sender, args){
	$view.close();
}
function com$layou$study$ExamHistoryTopicController$loadTopicFlipper(sender, args){
	var data = $param.getJSONObject("toticData");
	examHistoryTopic.topicTotal = data.total;
	examHistoryTopic.topicIndex = 0;
	examHistoryTopic.topicRows = data.rows;
	settingTopicInfo();
}
function settingTopicInfo(){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	//更新题目数
	$id("imagebutton1").set("value", examHistoryTopic.topicIndex + 1 + "/" + examHistoryTopic.topicTotal);
	//更新收藏信息
	var collect = examHistoryTopic.topicRows[examHistoryTopic.topicIndex].collect;
	if(collect == 'true'){
		$id("imagebutton2").set("value", "已收藏");
		$id("imagebutton2").set("checked", "true");
	} else {
		$id("imagebutton2").set("value", "收藏");
		$id("imagebutton2").set("checked", "false");
	}
	if(flipperIndex == 0){
		//更新题目信息
		$id("label1").set("value", examHistoryTopic.topicRows[examHistoryTopic.topicIndex].topic);
		var answerArray = examHistoryTopic.topicRows[examHistoryTopic.topicIndex].answer.split("##");
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
		$id("label6").set("value", examHistoryTopic.topicRows[examHistoryTopic.topicIndex].analysis);
	} else if(flipperIndex == 1){
		//更新题目信息
		$id("label7").set("value", examHistoryTopic.topicRows[examHistoryTopic.topicIndex].topic);
		var answerArray = examHistoryTopic.topicRows[examHistoryTopic.topicIndex].answer.split("##");
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
		$id("label12").set("value", examHistoryTopic.topicRows[examHistoryTopic.topicIndex].analysis);
	} else if(flipperIndex == 2){
		//更新题目信息
		$id("label13").set("value", examHistoryTopic.topicRows[examHistoryTopic.topicIndex].topic);
		var answerArray = examHistoryTopic.topicRows[examHistoryTopic.topicIndex].answer.split("##");
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
		$id("label18").set("value", examHistoryTopic.topicRows[examHistoryTopic.topicIndex].analysis);
	}
}
function com$layou$study$ExamHistoryTopicController$loadProviousTopicFlipper(sender, args){
	//加载新题目信息
	if(examHistoryTopic.topicIndex - 1 >= 0){
		examHistoryTopic.topicIndex = examHistoryTopic.topicIndex - 1;
		settingTopicInfo();
	}
}
function com$layou$study$ExamHistoryTopicController$loadNextTopicFlipper(sender, args){
	//加载新题目信息
	if(examHistoryTopic.topicIndex + 1 < examHistoryTopic.topicTotal){
		examHistoryTopic.topicIndex = examHistoryTopic.topicIndex + 1;
		settingTopicInfo();
	}
}
function com$layou$study$ExamHistoryTopicController$collectTopic(sender, args){
	var collect = examHistoryTopic.topicRows[examHistoryTopic.topicIndex].collect;
	var topicId = examHistoryTopic.topicRows[examHistoryTopic.topicIndex].topicId;
	var userId = $ctx.getApp("userId");
	if(collect == "false"){
		var params = "?userId=" + userId + "&topicId=" + topicId;
		$service.get({
			"url" : "http://10.2.112.42:8080/HappyStudyServer/collect/mobileSave" + params,
			"callback" : "collectTopicCallback()",
			"timeout" : "5"//可选参数，超时时间，单位为秒
		});
	} else {
		var params = "?userId=" + userId + "&topicId=" + topicId;
		$service.get({
			"url" : "http://10.2.112.42:8080/HappyStudyServer/collect/mobileDelete" + params,
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
		$id("imagebutton2").set("checked", "true");
		examHistoryTopic.topicRows[examHistoryTopic.topicIndex].collect = "true";
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
		$id("imagebutton2").set("checked", "false");
		examHistoryTopic.topicRows[examHistoryTopic.topicIndex].collect = "false";
		$toast("取消成功");
	} else {
		$alert("取消失败");
	}
}
com.layou.study.ExamHistoryTopicController.prototype = {
    collectTopic : com$layou$study$ExamHistoryTopicController$collectTopic,
    loadNextTopicFlipper : com$layou$study$ExamHistoryTopicController$loadNextTopicFlipper,
    loadProviousTopicFlipper : com$layou$study$ExamHistoryTopicController$loadProviousTopicFlipper,
    loadTopicFlipper : com$layou$study$ExamHistoryTopicController$loadTopicFlipper,
    closeExamHistoryTopic : com$layou$study$ExamHistoryTopicController$closeExamHistoryTopic,
    initialize : com$layou$study$ExamHistoryTopicController$initialize,
    evaljs : com$layou$study$ExamHistoryTopicController$evaljs
};
com.layou.study.ExamHistoryTopicController.registerClass('com.layou.study.ExamHistoryTopicController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
