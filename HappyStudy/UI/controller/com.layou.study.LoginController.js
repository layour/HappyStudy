//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.LoginController');
com.layou.study.LoginController = function() {
    com.layou.study.LoginController.initializeBase(this);
    this.initialize();
}
function com$layou$study$LoginController$initialize(){
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
    
function com$layou$study$LoginController$evaljs(js){
    eval(js)
}
function com$layou$study$LoginController$openRegister(sender, args){
	$view.open({
		"viewid" : "com.layou.study.Register",//目标页面（首字母大写）全名，
		"isKeep" : "false"
	});
}
function com$layou$study$LoginController$login(sender, args){
	var usercode = $id("wusertext").getAttribute("value");
	var password = $id("wpasstext").getAttribute("value");
	if(com.layou.study.GlobalUtil.isEmptyString(usercode)){
		$alert("手机号不能为空");
		return;
	} else if(usercode.length != 11){
		$alert("手机号长度必需是11位");
		return;
	}
	if(com.layou.study.GlobalUtil.isEmptyString(password)){
		$alert("密码不能为空");
		return;
	}
	$service.get({
		"url" : "http://10.2.112.42:8080/HappyStudyServer/user/login?loginName="+usercode+"&loginPwd=" + password,
		"callback" : "loginCallBack()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function loginCallBack(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	if(com.layou.study.GlobalUtil.isEmptyString(result)){
		$alert("登录超时");
		return;
	}
	result = $stringToJSON(result);//将字符串转换成JSON对象
	if('0' == result.code){
		$ctx.setApp(result.user);
		$cache.write("phoneNo", result.user.phoneNo);
		$cache.write("password", result.user.password);
		$toast("登录成功");
		$view.open({
			"viewid" : "com.layou.study.Home",//目标页面（首字母大写）全名，
			"isKeep" : "false"
		});
	} else if('1' == result.code){
		$alert("无此用户");
	} else if('2' == result.code){
		$alert("用户名或密码错误");
	}
}
function com$layou$study$LoginController$loadUserInfo(sender, args){
	var phoneNo = $cache.read("phoneNo");
	var password = $cache.read("password");
	$id("wusertext").set("value", phoneNo);
	$id("wpasstext").set("value", password);
}
com.layou.study.LoginController.prototype = {
    loadUserInfo : com$layou$study$LoginController$loadUserInfo,
    login : com$layou$study$LoginController$login,
    openRegister : com$layou$study$LoginController$openRegister,
    initialize : com$layou$study$LoginController$initialize,
    evaljs : com$layou$study$LoginController$evaljs
};
com.layou.study.LoginController.registerClass('com.layou.study.LoginController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
