<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="OpinionTickling" controller="OpinionTicklingController" namespace="com.layou.study">
    <import ref="OpinionTickling.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" title="意见反馈" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeOpinionTickling()" type="button"/>
            <label id="label0"/>
            <input id="button1" class="ngbbuttonclass" onclick="this.openOpinionDetail()" type="button"/> 
        </navigatorbar>
        <label id="label1">意见描述：</label>
        <textArea id="textarea0" placeholder="请详述您的问题，我们会在最短的时间内核对并更改。（200字以内）"/>
        <input id="textbox0" maxlength="256" placeholder="输入您的手机号或邮箱" type="text"/>
        <input id="button3" value="提交" onclick="this.addOpinion()" type="button"/> 
    </div> 
</window>
