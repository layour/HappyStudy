<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="About" controller="AboutController" namespace="com.layou.study">
    <import ref="About.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="关于我" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeAbout()" type="button"/>
            <label id="label0"/> 
        </navigatorbar>
        <div id="panel0">
            <input id="imagebutton0" imagebuttontype="icon" value="图标名称" istogglebutton="false" class="imagebuttonclass" type="imagebutton" checked="false"/>
            <label id="label4">张三</label>
            <label id="label5">岗前班-201512</label> 
        </div>
        <div id="panel1" onclick="this.enterOpinionTickling()">
            <image id="image0" scaletype="fitcenter" src="opinion.png"/>
            <label id="label1">意见反馈</label>
            <image id="image3" scaletype="fitcenter" src="icon_enter.png"/> 
        </div>
        <div id="panel2" onclick="this.openSystemHelp()">
            <image id="image1" scaletype="fitcenter" src="about.png"/>
            <label id="label2">系统帮助</label>
            <image id="image4" scaletype="fitcenter" src="icon_enter.png"/> 
        </div>
        <div id="panel3" onclick="this.openAboutSystem()">
            <image id="image2" scaletype="fitcenter" src="help.png"/>
            <label id="label3">关于系统</label>
            <image id="image5" scaletype="fitcenter" src="icon_enter.png"/> 
        </div> 
    </div> 
</window>
