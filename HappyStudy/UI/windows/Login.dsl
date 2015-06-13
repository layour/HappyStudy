<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Login" controller="LoginController" namespace="com.layou.study">
    <import ref="Login.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0">
        <div id="panel0">
            <label id="label0">快乐学</label> 
        </div>
        <div id="wloginpanel">
            <div id="wuserpanel">
                <image id="wuserimg" scaletype="fitcenter" src="fa_user.png"/>
                <input id="wusertext" maxlength="256" placeholder="手机号" type="text"/> 
            </div>
            <div id="wpasspanel">
                <image id="wpassimg" scaletype="fitcenter" src="fa_password.png"/>
                <input id="wpasstext" maxlength="256" placeholder="密码" type="password"/> 
            </div>
            <input id="wloginbutton" value="登录" class="buttonclass loginbuttonclass" onclick="this.login()" type="button"/>
            <div id="wotherpanel">
                <label id="wregisterlabel" class="linklabelclass" onclick="this.openRegister()">立即注册</label>
                <label id="wnouserloginlabel" class="linklabelclass">忘记密码</label> 
            </div> 
        </div>
        <div id="panel1"/> 
    </div> 
</window>
