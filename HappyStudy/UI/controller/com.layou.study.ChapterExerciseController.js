//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.ChapterExerciseController');
com.layou.study.ChapterExerciseController = function() {
    com.layou.study.ChapterExerciseController.initializeBase(this);
    this.initialize();
}
function com$layou$study$ChapterExerciseController$initialize(){
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
    
function com$layou$study$ChapterExerciseController$evaljs(js){
    eval(js)
}
function com$layou$study$ChapterExerciseController$closeChapterExercise(sender, args){
	$view.close();
}
function com$layou$study$ChapterExerciseController$loadChapter(sender, args){
	var userId = $ctx.getApp("userId");
	$service.get({
		"url" : "http://192.168.1.109:8080/HappyStudyServer/chapter/mobileList",
		"callback" : "loadChapterCallback()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function loadChapterCallback(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	result = $stringToJSON(result);//将字符串转换成JSON对象
	var array = new Array();
	for (var i=0; i < result.rows.length; i++) {
		var chapterObj = {
			"chapterId" : result.rows[i].chapterId, 
			"index" : i + 1,
			"chapter" : result.rows[i].chapterName,
			"count" : result.rows[i].count + "题"
		};
	  	array[i] = chapterObj;
	};
	$ctx.put("list",array);
	$ctx.dataBind();
}
function com$layou$study$ChapterExerciseController$enterExerciseTopic(sender, args){
	var data = $id("listviewdefine0").get("row");
	data = $stringToJSON(data);//将字符串转换成JSON对象
	var chapterId = data.chapterId;
	var userId = $ctx.getApp("userId");
	$service.get({
		"url" : "http://192.168.1.109:8080/HappyStudyServer/topic/findTopicByUserChapter?search_chapterId=" + chapterId + "&search_userId=" + userId,
		"callback" : "loadToticByChapterCallback()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function loadToticByChapterCallback(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	if(com.layou.study.GlobalUtil.isEmptyString(result)){
		$alert("请求超时");
		return;
	}
	result = $stringToJSON(result);//将字符串转换成JSON对象
	if(result.rows.length > 0){
		$view.open({
			"viewid" : "com.layou.study.ExerciseTopic",//目标页面（首字母大写）全名，
			"isKeep" : "true",
			"toticData" : result
		});
	}
}
com.layou.study.ChapterExerciseController.prototype = {
    enterExerciseTopic : com$layou$study$ChapterExerciseController$enterExerciseTopic,
    loadChapter : com$layou$study$ChapterExerciseController$loadChapter,
    closeChapterExercise : com$layou$study$ChapterExerciseController$closeChapterExercise,
    initialize : com$layou$study$ChapterExerciseController$initialize,
    evaljs : com$layou$study$ChapterExerciseController$evaljs
};
com.layou.study.ChapterExerciseController.registerClass('com.layou.study.ChapterExerciseController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
