//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.ExamTopicController');
com.layou.study.ExamTopicController = function() {
    com.layou.study.ExamTopicController.initializeBase(this);
    this.initialize();
}
function com$layou$study$ExamTopicController$initialize(){
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
var examTopic = new Object();
    
function com$layou$study$ExamTopicController$evaljs(js){
    eval(js)
}
function com$layou$study$ExamTopicController$closeExamTopic(sender, args){
	comfirmCommitPaper();
}
function com$layou$study$ExamTopicController$loadTopicFlipper(sender, args){
	var data = $param.getJSONObject("toticData");
	examTopic.topicTotal = data.total;
	examTopic.topicIndex = 0;
	examTopic.topicRows = data.rows;
	settingTopicInfo();
}
function settingTopicInfo(){
	var flipperIndex = $id("flipperdefine0").get("viewindex");
	//更新题目数
	$id("imagebutton1").set("value", examTopic.topicIndex + 1 + "/" + examTopic.topicTotal);
	if(flipperIndex == 0){
		//更新题目信息
		$id("label1").set("value", examTopic.topicRows[examTopic.topicIndex].topic);
		var answerArray = examTopic.topicRows[examTopic.topicIndex].answer.split("##");
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
		$id("label6").set("value", examTopic.topicRows[examTopic.topicIndex].analysis);
	} else if(flipperIndex == 1){
		//更新题目信息
		$id("label7").set("value", examTopic.topicRows[examTopic.topicIndex].topic);
		var answerArray = examTopic.topicRows[examTopic.topicIndex].answer.split("##");
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
		$id("label12").set("value", examTopic.topicRows[examTopic.topicIndex].analysis);
	} else if(flipperIndex == 2){
		//更新题目信息
		$id("label13").set("value", examTopic.topicRows[examTopic.topicIndex].topic);
		var answerArray = examTopic.topicRows[examTopic.topicIndex].answer.split("##");
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
		$id("label18").set("value", examTopic.topicRows[examTopic.topicIndex].analysis);
	}
}
function com$layou$study$ExamTopicController$loadProviousTopicFlipper(sender, args){
	//加载新题目信息
	if(examTopic.topicIndex - 1 >= 0){
		examTopic.topicIndex = examTopic.topicIndex - 1;
		settingTopicInfo();
	}
}
function com$layou$study$ExamTopicController$loadNextTopicFlipper(sender, args){
	//加载新题目信息
	if(examTopic.topicIndex + 1 < examTopic.topicTotal){
		examTopic.topicIndex = examTopic.topicIndex + 1;
		settingTopicInfo();
	}
}
function com$layou$study$ExamTopicController$selectA(sender, args){
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
function com$layou$study$ExamTopicController$selectB(sender, args){
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
function com$layou$study$ExamTopicController$selectC(sender, args){
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
function com$layou$study$ExamTopicController$selectD(sender, args){
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
function com$layou$study$ExamTopicController$commitPaper(sender, args){
	comfirmCommitPaper();
}
function com$layou$study$ExamTopicController$changeOnKeyDown(sender, args){
	comfirmCommitPaper();
}
function comfirmCommitPaper(){
	//确认是否提交试卷
	var flag = $confirm("确定要提交试卷？");
	//提交试卷后生成考试记录
	if(flag == true){
		$view.open({
			"viewid" : "com.layou.study.ExamResult",//目标页面（首字母大写）全名，
			"isKeep" : "true"
		});
	}
}
com.layou.study.ExamTopicController.prototype = {
    commitPaper : com$layou$study$ExamTopicController$commitPaper,
    changeOnKeyDown : com$layou$study$ExamTopicController$changeOnKeyDown,
    selectD : com$layou$study$ExamTopicController$selectD,
    selectC : com$layou$study$ExamTopicController$selectC,
    selectB : com$layou$study$ExamTopicController$selectB,
    selectA : com$layou$study$ExamTopicController$selectA,
    loadNextTopicFlipper : com$layou$study$ExamTopicController$loadNextTopicFlipper,
    loadProviousTopicFlipper : com$layou$study$ExamTopicController$loadProviousTopicFlipper,
    loadTopicFlipper : com$layou$study$ExamTopicController$loadTopicFlipper,
    closeExamTopic : com$layou$study$ExamTopicController$closeExamTopic,
    initialize : com$layou$study$ExamTopicController$initialize,
    evaljs : com$layou$study$ExamTopicController$evaljs
};
com.layou.study.ExamTopicController.registerClass('com.layou.study.ExamTopicController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
