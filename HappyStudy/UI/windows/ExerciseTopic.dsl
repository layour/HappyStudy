<?xml version="1.0" encoding="UTF-8"?>

<window xmlns:web="http://www.yonyou.com/uapmobile/dsl" id="ExerciseTopic" controller="ExerciseTopicController" namespace="com.layou.study">
    <import ref="ExerciseTopic.css" type="css"/>
    <link type="text/css" href="sys/theme.css"/>
    <script src="#{path.controller}/com.layou.study.GlobalUtil.js" type="text/javascript"/>
    <div id="viewPage0">
        <navigatorbar id="navigatorbar0" class="navigatorbarclass">
            <input id="button0" class="ngbbuttonclass" onclick="this.closeExerciseTopic()" type="button"/>
            <label id="label0"/>
            <input id="imagebutton0" value="详解" istogglebutton="false" onclick="this.showAnalysis()" type="imagebutton" checked="false"/>
            <input id="imagebutton1" value="1/100" istogglebutton="false" type="imagebutton" checked="false"/>
            <input id="imagebutton2" value="收藏" istogglebutton="false" onclick="this.collectTopic()" type="imagebutton" checked="false"/> 
        </navigatorbar>
        <flipper id="flipperdefine0" onnextflipper="this.loadNextTopicFlipper()" onload="this.loadTopicFlipper()" onpreviousflipper="this.loadProviousTopicFlipper()" viewindex="0">
            <div id="panel0" title="页面1">
                <label id="label6" type="multiline">一年期的意外伤害保险费率厘定的因素主要是考虑？ </label>
                <div id="panel7">
                    <input id="checkbox4" type="checkbox" onchange="this.selectA()"/>
                    <label id="label7" type="multiline">预定利率</label> 
                </div>
                <div id="panel8">
                    <input id="checkbox5" type="checkbox" onchange="this.selectB()"/>
                    <label id="label8" type="multiline">意外的持续时间</label> 
                </div>
                <div id="panel9">
                    <input id="checkbox6" type="checkbox" onchange="this.selectC()"/>
                    <label id="label9" type="multiline">被保险人的职业、工种</label> 
                </div>
                <div id="panel10">
                    <input id="checkbox7" type="checkbox" onchange="this.selectD()"/>
                    <label id="label10" type="multiline">被保险人的死亡率</label> 
                </div>
                <label id="label17" type="multiline">正确答案：B</label> 
            </div>
            <div id="panel1" title="页面2">
                <label id="label1" type="multiline">根据我国消费者权益保护法的规定，消费者协会履行的职能之一是？ </label>
                <div id="panel3">
                    <input id="checkbox0" type="checkbox" onchange="this.selectA()"/>
                    <label id="label2" type="multiline">参与生产企业的年度生产计划的制定</label> 
                </div>
                <div id="panel4">
                    <input id="checkbox1" type="checkbox" onchange="this.selectB()"/>
                    <label id="label3" type="multiline">受理经营者的投诉，并对投诉事项进行调查、调解</label> 
                </div>
                <div id="panel5">
                    <input id="checkbox2" type="checkbox" onchange="this.selectC()"/>
                    <label id="label4" type="multiline">参与销售企业市场开拓计划的制定</label> 
                </div>
                <div id="panel6">
                    <input id="checkbox3" type="checkbox" onchange="this.selectD()"/>
                    <label id="label5" type="multiline">对损害消费者合法权益的行为，通过大众传播媒介予以揭露、批评</label> 
                </div>
                <label id="label18" type="multiline">答案：B</label> 
            </div>
            <div id="panel2" title="页面3">
                <label id="label11" type="multiline">下列不属于人身保险特征的是？ </label>
                <div id="panel11">
                    <input id="checkbox8" type="checkbox" onchange="this.selectA()"/>
                    <label id="label12" type="multiline">人身风险的特殊性</label> 
                </div>
                <div id="panel12">
                    <input id="checkbox9" type="checkbox" onchange="this.selectB()"/>
                    <label id="label13" type="multiline">保险标的的特殊性</label> 
                </div>
                <div id="panel13">
                    <input id="checkbox10" type="checkbox" onchange="this.selectC()"/>
                    <label id="label14" type="multiline">保险费率厘定的特殊性</label> 
                </div>
                <div id="panel14">
                    <input id="checkbox11" type="checkbox" onchange="this.selectD()"/>
                    <label id="label15" type="multiline">保险金额确定的特殊性</label> 
                </div>
                <label id="label16" type="multiline">答案：C</label> 
            </div> 
        </flipper> 
    </div> 
</window>
