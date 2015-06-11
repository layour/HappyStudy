//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.ChapterCollectController');
com.layou.study.ChapterCollectController = function() {
    com.layou.study.ChapterCollectController.initializeBase(this);
    this.initialize();
}
function com$layou$study$ChapterCollectController$initialize(){
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
    
function com$layou$study$ChapterCollectController$evaljs(js){
    eval(js)
}
function com$layou$study$ChapterCollectController$closeChapterCollect(sender, args){
	$view.close();
}
function com$layou$study$ChapterCollectController$loadChapter(sender, args){
	var json = {
		list : [{
			index : "全",
			chapter : "全部",
			count : "900题"
		}, {
			index : 1,
			chapter : "第一章",
			count : "120题"
		}, {
			index : 2,
			chapter : "第二章",
			count : "128题"
		}, {
			index : 3,
			chapter : "第三章",
			count : "165题"
		}, {
			index : 4,
			chapter : "第四章",
			count : "200题"
		}, {
			index : 5,
			chapter : "第五章",
			count : "50题"
		}, {
			index : 6,
			chapter : "第六章",
			count : "90题"
		}, {
			index : 7,
			chapter : "第七章",
			count : "110题"
		}, {
			index : 8,
			chapter : "第八章",
			count : "56题"
		}, {
			index : 9,
			chapter : "第九章",
			count : "52题"
		}, {
			index : 10,
			chapter : "法律法规",
			count : "146题"
		}]
	}
	$ctx.push(json);
}
function com$layou$study$ChapterCollectController$enterExerciseTopic(sender, args){
	$view.open({
		"viewid" : "com.layou.study.ErrorTopic",//目标页面（首字母大写）全名，
		"isKeep" : "true"
	});
}
com.layou.study.ChapterCollectController.prototype = {
    enterExerciseTopic : com$layou$study$ChapterCollectController$enterExerciseTopic,
    loadChapter : com$layou$study$ChapterCollectController$loadChapter,
    closeChapterCollect : com$layou$study$ChapterCollectController$closeChapterCollect,
    initialize : com$layou$study$ChapterCollectController$initialize,
    evaljs : com$layou$study$ChapterCollectController$evaljs
};
com.layou.study.ChapterCollectController.registerClass('com.layou.study.ChapterCollectController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
