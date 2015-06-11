<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Register" controller="RegisterController" namespace="com.layou.study">
    <import ref="Register.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="基本信息" class="navigatorbarclass">
            <input id="button0" class="buttonclass" onclick="this.closeRegister()" type="button"/>
            <label id="label0"/> 
        </navigatorbar>
        <div id="wloginpanel">
            <input id="wmailtext" maxlength="256" placeholder="手机号" type="text"/>
            <input id="wusertext" maxlength="256" placeholder="姓名" type="text"/>
            <div id="panel0">
                <toggleButtonGroup id="togglebuttongroup0">
                    <toggleButton id="togglebutton0" value="0" class="togglebtnitemclass" textOff="男" textOn="男" type="button" checked="true"/>
                    <toggleButton id="togglebutton1" value="1" class="togglebtnitemclass" textOff="女" textOn="女" type="button"/> 
                </toggleButtonGroup> 
            </div>
            <input id="wpasstext" maxlength="256" placeholder="身份证号" type="text"/>
            <input id="textbox2" maxlength="256" placeholder="推荐人工号" type="text"/>
            <input id="textbox0" maxlength="256" placeholder="推荐人手机号" type="text"/>
            <input id="wregisterbutton" value="下一步" onclick="this.nextJs()" type="button"/> 
        </div> 
    </div> 
</window>
