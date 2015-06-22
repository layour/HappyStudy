<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="Home" controller="HomeController" namespace="com.layou.study">
    <import ref="Home.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalFunction.js" type="text/javascript"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0" onload="this.addBackEvent()">
        <navigatorbar id="navigatorbar0" title="快乐学" class="navigatorbarclass">
            <label id="label0"/>
            <input id="button1" onclick="this.clockingIn()" type="button"/> 
        </navigatorbar>
        <div id="panel0">
            <imageflipper titleheight="20" id="imageflipper0" descheight="0" interval="2000" flipperbtnvisible="false" isloop="true" scaletype="fitxy" autoflip="true">
                <imageflipperitem id="imageflipper0_0" title=" 高山流水" description="" src="bz1.png"/>
                <imageflipperitem id="imageflipper0_1" title="人间仙境" description="" src="bz2.png"/>
                <imageflipperitem id="imageflipper0_2" title="明媚阳光" description="" src="bz3.png"/> 
            </imageflipper>
            <div id="panel2">
                <div id="panel4">
                    <input id="imagebutton0" value="模拟考试" istogglebutton="false" class="imagebuttonclass" onclick="this.enterExamSelect()" type="imagebutton" checked="false"/> 
                </div>
                <div id="panel5">
                    <input id="imagebutton1" value="我的错题" istogglebutton="false" class="imagebuttonclass" onclick="this.enterMyErrorTopic()" type="imagebutton" checked="false"/>
                    <input id="imagebutton2" value="网络错题" istogglebutton="false" class="imagebuttonclass" onclick="this.enterNetworkErrorTopic()" type="imagebutton" checked="false"/> 
                </div> 
            </div>
            <div id="panel3">
                <div id="panel9">
                    <input id="imagebutton3" value="章节练习" istogglebutton="false" class="imagebuttonclass" onclick="this.enterChapterExercise()" type="imagebutton" checked="false"/>
                    <input id="imagebutton4" value="随机练习" istogglebutton="false" class="imagebuttonclass" onclick="this.enterExerciseTopic()" type="imagebutton" checked="false"/> 
                </div>
                <div id="panel8">
                    <input id="imagebutton5" value="我的收藏" istogglebutton="false" class="imagebuttonclass" onclick="this.enterMyCollectTopic()" type="imagebutton" checked="false"/> 
                </div> 
            </div> 
        </div>
        <toolbar id="toolbar0">
            <input imagebuttontype="icontext" id="imagebutton6" value="考试" istogglebutton="false" class="imagebuttonclass" type="imagebutton" checked="true"/>
            <input imagebuttontype="icontext" id="imagebutton7" value="签到" istogglebutton="false" class="imagebuttonclass" onclick="this.openClockingIn()" type="imagebutton" checked="false"/>
            <input imagebuttontype="icontext" id="imagebutton8" value="统计" istogglebutton="false" class="imagebuttonclass" onclick="this.openStatistics()" type="imagebutton" checked="false"/>
            <input imagebuttontype="icontext" id="imagebutton9" value="关于我" istogglebutton="false" class="imagebuttonclass" onclick="this.openAbout()" type="imagebutton" checked="false"/> 
        </toolbar> 
    </div> 
</window>
