//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.HomeController');
com.layou.study.HomeController = function() {
    com.layou.study.HomeController.initializeBase(this);
    this.initialize();
}
function com$layou$study$HomeController$initialize(){
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
    
function com$layou$study$HomeController$evaljs(js){
    eval(js)
}
function com$layou$study$HomeController$openClockingIn(sender, args){
	$view.open({
		"viewid" : "com.layou.study.ClockingIn",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$HomeController$openStatistics(sender, args){
	$view.open({
		"viewid" : "com.layou.study.Statistics",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$HomeController$openAbout(sender, args){
	$view.open({
		"viewid" : "com.layou.study.About",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$HomeController$addBackEvent(sender, args){
	//设置退出提示
	$js.backConfirm();
	//获取位置信息
	$device.getLocation({
		"bindfield" : "location", //位置信息回写的绑定字段
		"callback" : function(){
			$alert($ctx.getString("location"));
			/*$ctx.setApp({"a":"x",
				"b":"#{plug.x}",
				"c":"#{name}",
				"d":"#{cursor.x}"
			})*/
		},
		"single" : "true", //是否只获取1次
		"isgetaddress" : "true", //是否需要获取地址
		"network" : "false" //是否使用wifi定位
	})
}
function com$layou$study$HomeController$clockingIn(sender, args){
	com.layou.study.GlobalFunction.clockingIn();
}
function com$layou$study$HomeController$enterChapterExercise(sender, args){
	$view.open({
		"viewid" : "com.layou.study.ChapterExercise",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$HomeController$enterChapterCollect(sender, args){
	$view.open({
		"viewid" : "com.layou.study.ChapterCollect",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$HomeController$enterExerciseTopic(sender, args){
	$view.open({
		"viewid" : "com.layou.study.ExerciseTopic",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
function com$layou$study$HomeController$enterExamSelect(sender, args){
	$view.open({
		"viewid" : "com.layou.study.ExamSelect",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
com.layou.study.HomeController.prototype = {
    enterExamSelect : com$layou$study$HomeController$enterExamSelect,
    enterExerciseTopic : com$layou$study$HomeController$enterExerciseTopic,
    enterChapterCollect : com$layou$study$HomeController$enterChapterCollect,
    enterChapterExercise : com$layou$study$HomeController$enterChapterExercise,
    clockingIn : com$layou$study$HomeController$clockingIn,
    addBackEvent : com$layou$study$HomeController$addBackEvent,
    openAbout : com$layou$study$HomeController$openAbout,
    openStatistics : com$layou$study$HomeController$openStatistics,
    openClockingIn : com$layou$study$HomeController$openClockingIn,
    initialize : com$layou$study$HomeController$initialize,
    evaljs : com$layou$study$HomeController$evaljs
};
com.layou.study.HomeController.registerClass('com.layou.study.HomeController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
