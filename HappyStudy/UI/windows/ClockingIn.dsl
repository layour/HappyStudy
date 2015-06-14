<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="ClockingIn" controller="ClockingInController" namespace="com.layou.study">
    <import ref="ClockingIn.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <script src="#{path.controller}/com.layou.study.GlobalFunction.js" type="text/javascript"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="签到" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeClockingIn()" type="button"/>
            <label id="label0"/>
            <input id="button1" class="ngbbuttonclass" onclick="this.clockingIn()" type="button"/> 
        </navigatorbar>
        <listView id="listviewdefine0" bindfield="list" onload="this.clockingInLoad()">
            <div id="panel0">
                <div id="panel1">
                    <label id="label1" bindfield="checkTime">2015-05-26 15:59:00</label>
                    <label id="label2" bindfield="checkType">签到</label> 
                </div>
                <div id="panel2"/> 
            </div> 
        </listView>
        <div id="panel3">
            <input id="button2" value="签到" onclick="this.clockingIn()" type="button"/>
            <input id="button3" value="补签" type="button"/> 
        </div> 
    </div> 
</window>
