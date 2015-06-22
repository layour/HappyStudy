//JavaScript Framework 2.0 Code

//声明一个命名空间
Type.registerNamespace('com.layou.study.GlobalFunction');

//在此命名空间下声明方法
com.layou.study.GlobalFunction.clockingIn = function(){
	$scanner.open({
		bindfield : "code",
		callback : "com.layou.study.GlobalFunction.scannerCallback()"
	});
}
com.layou.study.GlobalFunction.scannerCallback = function(){      
	var data = $ctx.getString("code");            
	
	var checkAddr = "合肥";
	var location = $ctx.getApp("address");
	if(!com.layou.study.GlobalUtil.isEmptyString(location)){
		checkAddr = location;
	}
	
	var checkType = "签到";
	var userId = $ctx.getApp("userId");
	
	var params = "?checkTime=" + data + "&checkAddr=" + $js.urlEncode(checkAddr) + "&checkType=" + $js.urlEncode(checkType) + "&userId=" + userId;
	$service.get({
		"url" : "http://192.168.1.109:8080/HappyStudyServer/checkIn/mobileSave" + params,
		"callback" : "com.layou.study.GlobalFunction.checkInCallback()",
		"timeout" : "5"//可选参数，超时时间，单位为秒
	});
}
com.layou.study.GlobalFunction.checkInCallback = function(){
	var result = $ctx.param("result");//get和post的CallBack中获取返回结果都从result中获取
	if(com.layou.study.GlobalUtil.isEmptyString(result)){
		$alert("签到超时");
		return;
	}
	result = $stringToJSON(result);//将字符串转换成JSON对象
	if('0' == result.code){
		$toast("签到成功");
		$view.open({
			"viewid" : "com.layou.study.ClockingIn",//目标页面（首字母大写）全名，
			"isKeep" : "false"
		});
	} else if('1' == result.code){
		$alert("签到日期错误");
	} else {
		$alert("签到失败");
	}
}
