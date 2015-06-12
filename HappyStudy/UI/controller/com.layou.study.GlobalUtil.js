//JavaScript Framework 2.0 Code

//声明一个命名空间
Type.registerNamespace('com.layou.study.GlobalUtil');

//在此命名空间下声明方法
com.layou.study.GlobalUtil.isEmptyString = function(param){
	if(param == null || typeof(param) == 'undefined' || param == ''){
		return true;
	}
	return false;
}
