<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Statistics" controller="StatisticsController" namespace="com.layou.study">
    <import ref="Statistics.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="统计" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeStaistics()" type="button"/>
            <label id="label0"/> 
        </navigatorbar>
        <div id="panel3">
            <label id="label8">100%</label>
            <label id="label1">准确率</label> 
        </div>
        <listView id="listviewdefine0" bindfield="list" onload="this.listDetailLoad()">
            <div id="panel0">
                <div id="panel1">
                    <label id="label2"/>
                    <label id="label3" bindfield="key">做对</label>
                    <label id="label4" bindfield="value">0</label>
                    <label id="label5">占</label>
                    <label id="label6" bindfield="percent">0</label>
                    <label id="label7">%</label> 
                </div>
                <div id="panel2"/> 
            </div> 
        </listView> 
    </div> 
</window>
