<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="ExamHistory" controller="ExamHistoryController" namespace="com.layou.study">
    <import ref="ExamHistory.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="考试记录" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeExamHistory()" type="button"/>
            <label id="label0"/>
            <input id="button1" value="清空" type="button"/> 
        </navigatorbar>
        <listView id="listviewdefine0" bindfield="list" onload="this.loadExamHistory()" onitemclick="this.enterExamHistoryTopic()">
            <div id="panel0">
                <div id="panel1">
                    <label id="label1" bindfield="index">1</label>
                    <div id="panel3">
                        <label id="label2" bindfield="score">0分</label>
                        <label id="label3" bindfield="time">用时00:00 | 2015-06-02 15:17:00</label> 
                    </div> 
                </div>
                <div id="panel2"/> 
            </div> 
        </listView> 
    </div> 
</window>
