<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="ExamSelect" controller="ExamSelectController" namespace="com.layou.study">
    <import ref="ExamSelect.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="模拟考试" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeExamSelect()" type="button"/>
            <label id="label0"/>
            <input id="button2" class="ngbbuttonclass" onclick="this.openExamHistory()" type="button"/> 
        </navigatorbar>
        <div id="panel0" onload="this.loadUserInfo()">
            <input id="imagebutton0" imagebuttontype="icon" value="图标名称" istogglebutton="false" class="imagebuttonclass" type="imagebutton" checked="false"/>
            <label id="label1">张三</label>
            <label id="label2" type="multiline">导师技能提升班-20151201 | 中国平安培训</label>
            <label id="label3" type="multiline">考试题库（100道题）</label>
            <label id="label4" type="multiline">考试时间（120分钟）</label>
            <label id="label5" type="multiline">合格标准（满分100,60及格）</label>
            <input id="button1" value="全真模拟考试" onclick="this.popExamPaper()" type="button"/> 
        </div>
        <div id="panel1">
            <input id="button3" value="模拟试卷（一）" onclick="this.enterExamTopic()" type="button"/>
            <input id="button4" value="模拟试卷（二）" onclick="this.enterExamTopic()" type="button"/>
            <input id="button5" value="模拟试卷（三）" onclick="this.enterExamTopic()" type="button"/>
            <input id="button6" value="模拟试卷（四）" onclick="this.enterExamTopic()" type="button"/>
            <input id="button7" value="随机组卷" onclick="this.enterExamTopic()" type="button"/> 
        </div> 
    </div> 
</window>
