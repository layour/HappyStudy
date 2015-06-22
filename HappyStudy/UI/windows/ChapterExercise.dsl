<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="ChapterExercise" controller="ChapterExerciseController" namespace="com.layou.study">
    <import ref="ChapterExercise.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="章节练习" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeChapterExercise()" type="button"/>
            <label id="label0"/> 
        </navigatorbar>
        <listView id="listviewdefine0" bindfield="list" onload="this.loadChapter()" onitemclick="this.enterExerciseTopic()">
            <div id="panel0">
                <div id="panel1">
                    <label id="label3" bindfield="index">1</label>
                    <div id="panel3">
                        <label id="label1" bindfield="chapter">第一章</label>
                        <label id="label2" bindfield="count">120题</label> 
                    </div> 
                </div>
                <div id="panel2"/> 
            </div> 
        </listView> 
    </div> 
</window>
