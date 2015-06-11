//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.ExamHistoryController');
com.layou.study.ExamHistoryController = function() {
    com.layou.study.ExamHistoryController.initializeBase(this);
    this.initialize();
}
function com$layou$study$ExamHistoryController$initialize(){
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
    
function com$layou$study$ExamHistoryController$evaljs(js){
    eval(js)
}
function com$layou$study$ExamHistoryController$closeExamHistory(sender, args){
	$view.close();
}
function com$layou$study$ExamHistoryController$loadExamHistory(sender, args){
	var json = {
		list : [{
			index : 5,
			score : "100分",
			time : "用时00:00 2015-06-02 15:17:00"
		}, {
			index : 4,
			score : "90分",
			time : "用时00:00 2015-06-02 15:17:00"
		}, {
			index : 3,
			score : "80分",
			time : "用时00:00 2015-06-02 15:17:00"
		}, {
			index : 2,
			score : "70分",
			time : "用时00:00 2015-06-02 15:17:00"
		}, {
			index : 1,
			score : "60分",
			time : "用时00:00 2015-06-02 15:17:00"
		}]
	}
	$ctx.push(json);
}
function com$layou$study$ExamHistoryController$enterExamHistoryTopic(sender, args){
	$view.open({
		"viewid" : "com.layou.study.ExamHistoryTopic",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
com.layou.study.ExamHistoryController.prototype = {
    enterExamHistoryTopic : com$layou$study$ExamHistoryController$enterExamHistoryTopic,
    loadExamHistory : com$layou$study$ExamHistoryController$loadExamHistory,
    closeExamHistory : com$layou$study$ExamHistoryController$closeExamHistory,
    initialize : com$layou$study$ExamHistoryController$initialize,
    evaljs : com$layou$study$ExamHistoryController$evaljs
};
com.layou.study.ExamHistoryController.registerClass('com.layou.study.ExamHistoryController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
