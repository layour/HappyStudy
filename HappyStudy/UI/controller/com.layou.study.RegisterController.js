//JavaScript Framework 2.0 Code
try{
Type.registerNamespace('com.layou.study.RegisterController');
com.layou.study.RegisterController = function() {
    com.layou.study.RegisterController.initializeBase(this);
    this.initialize();
}
function com$layou$study$RegisterController$initialize(){
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
    
function com$layou$study$RegisterController$evaljs(js){
    eval(js)
}
function com$layou$study$RegisterController$closeRegister(sender, args){
	$view.close();
}
function com$layou$study$RegisterController$nextJs(sender, args){
	var phoneNo = $id("wmailtext").getAttribute("value");//手机号
	var password = $id("textbox1").getAttribute("value");//密码
	var repassword = $id("textbox3").getAttribute("value");//确认密码
	var userName = $id("wusertext").getAttribute("value");//姓名
	var sex = "男";//性别
	if($id("checkbox1").getAttribute("checked")){
		sex = "女";
	}
	var idNo = $id("wpasstext").getAttribute("value");//身份证号
	var referrerNo = $id("textbox2").getAttribute("value");//推荐人工号
	var referrerPhoneNo = $id("textbox0").getAttribute("value");//推荐人手机号
	$ctx.dataCollect();//数据收集
	var city = $ctx.getString("city");//城市
	var teamType = $ctx.getString("type");//班型
	var role = "普通用户";//角色
	var teamClass = $ctx.getString("team");//班级
	//手机号校验
	if(com.layou.study.GlobalUtil.isEmptyString(phoneNo)){
		$alert("手机号不能为空");
		return;
	} else if(phoneNo.length != 11){
		$alert("手机号长度必需是11位");
		return;
	}
	//密码校验
	if(com.layou.study.GlobalUtil.isEmptyString(password)){
		$alert("密码不能为空");
		return;
	}
	//确认密码校验
	if(com.layou.study.GlobalUtil.isEmptyString(repassword)){
		$alert("确认密码不能为空");
		return;
	} else if(password != repassword){
		$alert("密码和确认密码不一致");
		return;
	}
	//姓名校验
	if(com.layou.study.GlobalUtil.isEmptyString(userName)){
		$alert("姓名不能为空");
		return;
	}
	//身份证号校验
	if(com.layou.study.GlobalUtil.isEmptyString(idNo)){
		$alert("身份证号不能为空");
		return;
	} else if(idNo.length != 18 && idNo.length != 15){
		$alert("身份证号长度必需是15位或18位");
		return;
	}
	//推荐人工号校验
	if(com.layou.study.GlobalUtil.isEmptyString(referrerNo)){
		$alert("推荐人工号不能为空");
		return;
	}
	//推荐人手机号校验
	if(com.layou.study.GlobalUtil.isEmptyString(referrerPhoneNo)){
		$alert("推荐人手机号不能为空");
		return;
	} else if(referrerPhoneNo.length != 11){
		$alert("推荐人手机号长度必需是11位");
		return;
	}
	var params = "?phoneNo=" + phoneNo + "&password=" + password + "&userName=" + userName + "&sex=" + sex + "&idNo=" + idNo + "&referrerNo=" + referrerNo + "&referrerPhoneNo=" + referrerPhoneNo + "&city=" + city + "&teamType=" + teamType + "&role=" + role + "&teamClass=" + teamClass  
	$service.post({
		"url" : "http://10.2.112.42:8080/HappyStudyServer/user/mobileSave" + params,
		"callback" : "registerCallBack()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function registerCallBack(){
	var result = $ctx.param("result");
	if(com.layou.study.GlobalUtil.isEmptyString(result)){
		$alert("注册超时");
		return;
	}
	result = $stringToJSON(result);//将字符串转换成JSON对象
	if(result.code == "0"){
		$ctx.setApp(result.user)
		$toast("注册成功");
		$view.open({
			"viewid" : "com.layou.study.Home",//目标页面（首字母大写）全名，
			"isKeep" : "false"
		});
	} else {
		$alert("注册失败");
	}
}
function com$layou$study$RegisterController$loadTeamType(sender, args){
	$service.get({
		"url" : "http://10.2.112.42:8080/HappyStudyServer/teamClass/mobileList",
		"callback" : "loadClassCallBack()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
function loadClassCallBack(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	result = $stringToJSON(result);//将字符串转换成JSON对象
	var array = new Array();
	for (var i=0; i < result.rows.length; i++) {
	  	array[i] = result.rows[i].teamClassName;
	};
	var context={
		citys:["合肥1","合肥2","合肥3","合肥4","合肥5","安庆","蚌埠","亳州","巢湖","池州","滁州","阜阳","淮北","淮南","黄山","六安","马鞍山","宿州","铜陵","芜湖","宣城"],
		types:["职前班","考试辅导班","岗前班","步步高","加油站","冲锋班","部（课）衔训","导师技能提升班","研讨班"],
		teams:array
	}
	$ctx.push(context);//数据绑定,将context的值与picker进行绑定
}
function com$layou$study$RegisterController$selectMale(sender, args){
	var selectMale = $id("checkbox0").getAttribute("checked");
	if(selectMale == "true"){
		$id("checkbox1").setAttribute("checked", "false");
	} else {
		$id("checkbox0").setAttribute("checked", "true");
	}
}
function com$layou$study$RegisterController$selectWoman(sender, args){
	var selectWoman = $id("checkbox1").getAttribute("checked");
	if(selectWoman == "true"){
		$id("checkbox0").setAttribute("checked", "false");
	} else {
		$id("checkbox1").setAttribute("checked", "true");
	}
}
com.layou.study.RegisterController.prototype = {
    selectWoman : com$layou$study$RegisterController$selectWoman,
    selectMale : com$layou$study$RegisterController$selectMale,
    loadTeamType : com$layou$study$RegisterController$loadTeamType,
    nextJs : com$layou$study$RegisterController$nextJs,
    closeRegister : com$layou$study$RegisterController$closeRegister,
    initialize : com$layou$study$RegisterController$initialize,
    evaljs : com$layou$study$RegisterController$evaljs
};
com.layou.study.RegisterController.registerClass('com.layou.study.RegisterController',UMP.UI.Mvc.Controller);
}catch(e){$e(e);}
