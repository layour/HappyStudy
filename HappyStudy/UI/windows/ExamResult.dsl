<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="ExamResult" controller="ExamResultController" namespace="com.layou.study">
    <import ref="ExamResult.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0">
        <div id="panel0" onload="this.loadUserInfo()">
            <input id="imagebutton0" imagebuttontype="icon" value="图标名称" istogglebutton="false" class="imagebuttonclass" type="imagebutton" checked="false"/>
            <label id="label1">张三</label>
            <label id="label2" type="multiline">导师技能提升班-20151201 | 中国平安培训</label>
            <image id="image0" scaletype="fitcenter" src="picture"/>
            <div id="panel1">
                <input id="button0" value="签到" onclick="this.clockingIn()" type="button"/>
                <input id="button1" value="补签" type="button"/> 
            </div> 
        </div> 
    </div> 
</window>
