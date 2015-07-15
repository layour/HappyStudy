<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="ExamResult" controller="ExamResultController" namespace="com.layou.study">
    <import ref="ExamResult.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0">
        <div id="panel4">
            <input id="imagebutton1" imagebuttontype="icon" istogglebutton="false" class="imagebuttonclass" onclick="this.closeExamResult()" type="imagebutton" checked="false"/> 
        </div>
        <div id="panel0" onload="this.loadUserInfo()">
            <div id="panel2">
                <input id="imagebutton0" imagebuttontype="icon" value="图标名称" istogglebutton="false" class="imagebuttonclass" type="imagebutton" checked="false"/>
                <div id="panel3">
                    <label id="label1">张三</label>
                    <label id="label2" type="multiline">分数 100 | 用时 30:50</label> 
                </div> 
            </div>
            <image id="Umage0" scaletype="fitcenter" src="icon_right.png"/>
            <div id="panel1">
                <input id="button0" value="查看试卷" type="button"/>
                <input id="button1" value="查看错题" type="button"/> 
            </div> 
        </div> 
    </div> 
</window>
