<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="OpinionDetail" controller="OpinionDetailController" namespace="com.layou.study">
    <import ref="OpinionDetail.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="意见记录" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeOpinionDetail()" type="button"/>
            <label id="label0"/> 
        </navigatorbar>
        <listView id="listviewdefine0" bindfield="list" onload="this.loadOpinion()">
            <div id="panel0">
                <div id="panel1">
                    <label id="label1" bindfield="opinionDesc" type="multiline">内容</label>
                    <label id="label2" bindfield="opinionTime">2015-05月-29 15:31:00</label> 
                </div>
                <div id="panel2"/> 
            </div> 
        </listView> 
    </div> 
</window>
