<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Register" controller="RegisterController" namespace="com.layou.study">
    <import ref="Register.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="注册" class="navigatorbarclass">
            <input id="button0" class="buttonclass" onclick="this.closeRegister()" type="button"/>
            <label id="label0"/> 
        </navigatorbar>
        <Scrollview id="Scrollview_wloginpanel" width="fill" hScrollEnabled="disabled">
            <div id="wloginpanel">
                <input id="wmailtext" maxlength="256" placeholder="手机号" type="text"/>
                <input id="textbox1" maxlength="256" placeholder="密码" type="password"/>
                <input id="textbox3" maxlength="256" placeholder="确认密码" type="password"/>
                <input id="wusertext" maxlength="256" placeholder="姓名" type="text"/>
                <div id="panel0">
                    <input id="checkbox0" type="checkbox" checked="checked" onchange="this.selectMale()"/>
                    <label id="label1">男</label>
                    <input id="checkbox1" type="checkbox" onchange="this.selectWoman()"/>
                    <label id="label2">女</label> 
                </div>
                <input id="wpasstext" maxlength="256" placeholder="身份证号" type="text"/>
                <input id="textbox2" maxlength="256" placeholder="推荐人工号" type="text"/>
                <input id="textbox0" maxlength="256" placeholder="推荐人手机号" type="text"/>
                <picker id="picker0" onload="this.loadTeamType()">
                    <pickeritem onselectedchange="" bindfield="city" id="picker0_0" value="合肥" datasource="citys"/>
                    <pickeritem onselectedchange="" bindfield="type" id="picker0_1" value="岗前班" datasource="types"/>
                    <pickeritem onselectedchange="" bindfield="team" id="picker0_2" value="201512" datasource="teams"/> 
                </picker>
                <input id="wregisterbutton" value="完成" onclick="this.nextJs()" type="button"/> 
            </div>
        </Scrollview> 
    </div> 
</window>
