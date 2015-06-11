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
	$alert("二维码扫描结果:" + data);
}
