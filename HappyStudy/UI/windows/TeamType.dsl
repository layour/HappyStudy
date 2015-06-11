<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="TeamType" controller="TeamTypeController" namespace="com.layou.study">
    <import ref="TeamType.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="注册" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeTeamType()" type="button"/>
            <label id="label0"/> 
        </navigatorbar>
        <div id="panel0">
            <picker id="picker0" onload="this.loadTeamType()">
                <pickeritem onselectedchange="" bindfield="city" id="picker0_0" value="合肥" datasource="citys"/>
                <pickeritem onselectedchange="" bindfield="type" id="picker0_1" value="岗前班" datasource="types"/>
                <pickeritem onselectedchange="" bindfield="team" id="picker0_2" value="201512" datasource="teams"/> 
            </picker>
            <input id="button1" value="完成" onclick="this.registerJs()" type="button"/> 
        </div> 
    </div> 
</window>
