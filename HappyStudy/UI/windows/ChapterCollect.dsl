<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="ChapterCollect" controller="ChapterCollectController" namespace="com.layou.study">
    <import ref="ChapterCollect.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="收藏错题" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeChapterCollect()" type="button"/>
            <label id="label0"/>
            <input id="button1" value="清空" type="button"/> 
        </navigatorbar>
        <listView id="listviewdefine0" bindfield="list" onload="this.loadChapter()" onitemclick="this.enterExerciseTopic()">
            <div id="panel0">
                <div id="panel1">
                    <label id="label3" bindfield="index">全</label>
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
