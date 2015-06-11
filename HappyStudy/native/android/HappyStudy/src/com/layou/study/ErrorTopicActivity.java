package com.layou.study;

import com.yonyou.uap.um.application.ApplicationContext;
import com.yonyou.uap.um.base.*;
import com.yonyou.uap.um.common.*;
import com.yonyou.uap.um.third.*;
import com.yonyou.uap.um.control.*;
import com.yonyou.uap.um.core.*;
import com.yonyou.uap.um.binder.*;
import com.yonyou.uap.um.runtime.*;
import com.yonyou.uap.um.lexer.*;
import com.yonyou.uap.um.widget.*;
import com.yonyou.uap.um.widget.UmpSlidingLayout.SlidingViewType;
import com.yonyou.uap.um.log.ULog;
import java.util.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import android.webkit.*;
import android.content.*;
import android.graphics.*;
import android.widget.ImageView.ScaleType;

public abstract class ErrorTopicActivity extends UMWindowActivity {

	protected UMWindow ErrorTopic = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected UMImageButton imagebutton0 = null;
protected UMImageButton imagebutton1 = null;
protected UMImageButton imagebutton2 = null;
protected UMViewFlipper flipperdefine0 = null;
protected XVerticalLayout panel0 = null;
protected UMLabel label1 = null;
protected XHorizontalLayout panel1 = null;
protected UMCheckbox checkbox0 = null;
protected UMLabel label2 = null;
protected XHorizontalLayout panel2 = null;
protected UMCheckbox checkbox1 = null;
protected UMLabel label3 = null;
protected XHorizontalLayout panel3 = null;
protected UMCheckbox checkbox2 = null;
protected UMLabel label4 = null;
protected XHorizontalLayout panel4 = null;
protected UMCheckbox checkbox3 = null;
protected UMLabel label5 = null;
protected XVerticalLayout panel5 = null;
protected UMLabel label6 = null;
protected XHorizontalLayout panel6 = null;
protected UMCheckbox checkbox4 = null;
protected UMLabel label7 = null;
protected XHorizontalLayout panel7 = null;
protected UMCheckbox checkbox5 = null;
protected UMLabel label8 = null;
protected XHorizontalLayout panel8 = null;
protected UMCheckbox checkbox6 = null;
protected UMLabel label9 = null;
protected XHorizontalLayout panel9 = null;
protected UMCheckbox checkbox7 = null;
protected UMLabel label10 = null;
protected XVerticalLayout panel10 = null;
protected UMLabel label11 = null;
protected XHorizontalLayout panel11 = null;
protected UMCheckbox checkbox8 = null;
protected UMLabel label12 = null;
protected XHorizontalLayout panel12 = null;
protected UMCheckbox checkbox9 = null;
protected UMLabel label13 = null;
protected XHorizontalLayout panel13 = null;
protected UMCheckbox checkbox10 = null;
protected UMLabel label14 = null;
protected XHorizontalLayout panel14 = null;
protected UMCheckbox checkbox11 = null;
protected UMLabel label15 = null;

	
	protected final static int ID_ERRORTOPIC = 226416220;
protected final static int ID_VIEWPAGE0 = 811245419;
protected final static int ID_NAVIGATORBAR0 = 729622888;
protected final static int ID_BUTTON0 = 337947857;
protected final static int ID_LABEL0 = 1955334982;
protected final static int ID_IMAGEBUTTON0 = 1817974328;
protected final static int ID_IMAGEBUTTON1 = 1576499743;
protected final static int ID_IMAGEBUTTON2 = 1941069925;
protected final static int ID_FLIPPERDEFINE0 = 780387866;
protected final static int ID_PANEL0 = 722813492;
protected final static int ID_LABEL1 = 534535320;
protected final static int ID_PANEL1 = 513960522;
protected final static int ID_CHECKBOX0 = 1492442388;
protected final static int ID_LABEL2 = 614493631;
protected final static int ID_PANEL2 = 1299856802;
protected final static int ID_CHECKBOX1 = 2016465079;
protected final static int ID_LABEL3 = 1586490914;
protected final static int ID_PANEL3 = 1260156165;
protected final static int ID_CHECKBOX2 = 948101290;
protected final static int ID_LABEL4 = 1942889350;
protected final static int ID_PANEL4 = 407011681;
protected final static int ID_CHECKBOX3 = 279854363;
protected final static int ID_LABEL5 = 1993920733;
protected final static int ID_PANEL5 = 414035919;
protected final static int ID_LABEL6 = 1391965535;
protected final static int ID_PANEL6 = 362610911;
protected final static int ID_CHECKBOX4 = 1273746290;
protected final static int ID_LABEL7 = 622091528;
protected final static int ID_PANEL7 = 57846361;
protected final static int ID_CHECKBOX5 = 1299660434;
protected final static int ID_LABEL8 = 47235150;
protected final static int ID_PANEL8 = 1096465040;
protected final static int ID_CHECKBOX6 = 2132206062;
protected final static int ID_LABEL9 = 1113978111;
protected final static int ID_PANEL9 = 2022059336;
protected final static int ID_CHECKBOX7 = 2045459212;
protected final static int ID_LABEL10 = 1800021761;
protected final static int ID_PANEL10 = 864184753;
protected final static int ID_LABEL11 = 396217384;
protected final static int ID_PANEL11 = 1992741386;
protected final static int ID_CHECKBOX8 = 1203210524;
protected final static int ID_LABEL12 = 169952029;
protected final static int ID_PANEL12 = 1888606738;
protected final static int ID_CHECKBOX9 = 2090628385;
protected final static int ID_LABEL13 = 269749826;
protected final static int ID_PANEL13 = 897259191;
protected final static int ID_CHECKBOX10 = 1584905861;
protected final static int ID_LABEL14 = 1445881804;
protected final static int ID_PANEL14 = 1357630066;
protected final static int ID_CHECKBOX11 = 205828357;
protected final static int ID_LABEL15 = 1116727647;

	
	
	@Override
	public String getControllerName() {
		return "ErrorTopicController";
	}
	
	@Override
	public String getContextName() {
		return "";
	}

	@Override
	public String getNameSpace() {
		return "com.layou.study";
	}

	protected void onCreate(Bundle savedInstanceState) {
		ULog.logLC("onCreate", this);
		super.onCreate(savedInstanceState);
        onInit(savedInstanceState);
        
	}
	
	@Override
	protected void onStart() {
		ULog.logLC("onStart", this);
		
		super.onStart();
	}

	@Override
	protected void onRestart() {
		ULog.logLC("onRestart", this);
		
		super.onRestart();
	}

	@Override
	protected void onResume() {
		ULog.logLC("onResume", this);
		
		super.onResume();
	}

	@Override
	protected void onPause() {
		ULog.logLC("onPause", this);
		
		super.onPause();
	}

	@Override
	protected void onStop() {
		ULog.logLC("onStop", this);
		
		super.onStop();
	}

	@Override
	protected void onDestroy() {
		ULog.logLC("onDestroy", this);
		
		super.onDestroy();
	}
	
	public  void onInit(Bundle savedInstanceState) {
		ULog.logLC("onInit", this);
		UMActivity context = this;
		UMDslConfigure configure = new UMDslConfigure();
		registerControl();
		this.getContainer();
		
		/*
		 new Thread() {
			 public void run() {
				 UMPDebugClient.startServer();
			 }
		 }.start();
		*/
		String sys_debug = ApplicationContext.getCurrent(this).getValue("sys_debug");
		if (sys_debug != null && sys_debug.equalsIgnoreCase("true")) {
			UMPDebugClient.waitForDebug();
		}

		IBinderGroup binderGroup = this;
		currentPage = getCurrentWindow(context, binderGroup,configure);
super.setContentView(currentPage);

		
	}
	
	private void registerControl() {
		  idmap.put("ErrorTopic",ID_ERRORTOPIC);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("imagebutton0",ID_IMAGEBUTTON0);
  idmap.put("imagebutton1",ID_IMAGEBUTTON1);
  idmap.put("imagebutton2",ID_IMAGEBUTTON2);
  idmap.put("flipperdefine0",ID_FLIPPERDEFINE0);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("label1",ID_LABEL1);
  idmap.put("panel1",ID_PANEL1);
  idmap.put("checkbox0",ID_CHECKBOX0);
  idmap.put("label2",ID_LABEL2);
  idmap.put("panel2",ID_PANEL2);
  idmap.put("checkbox1",ID_CHECKBOX1);
  idmap.put("label3",ID_LABEL3);
  idmap.put("panel3",ID_PANEL3);
  idmap.put("checkbox2",ID_CHECKBOX2);
  idmap.put("label4",ID_LABEL4);
  idmap.put("panel4",ID_PANEL4);
  idmap.put("checkbox3",ID_CHECKBOX3);
  idmap.put("label5",ID_LABEL5);
  idmap.put("panel5",ID_PANEL5);
  idmap.put("label6",ID_LABEL6);
  idmap.put("panel6",ID_PANEL6);
  idmap.put("checkbox4",ID_CHECKBOX4);
  idmap.put("label7",ID_LABEL7);
  idmap.put("panel7",ID_PANEL7);
  idmap.put("checkbox5",ID_CHECKBOX5);
  idmap.put("label8",ID_LABEL8);
  idmap.put("panel8",ID_PANEL8);
  idmap.put("checkbox6",ID_CHECKBOX6);
  idmap.put("label9",ID_LABEL9);
  idmap.put("panel9",ID_PANEL9);
  idmap.put("checkbox7",ID_CHECKBOX7);
  idmap.put("label10",ID_LABEL10);
  idmap.put("panel10",ID_PANEL10);
  idmap.put("label11",ID_LABEL11);
  idmap.put("panel11",ID_PANEL11);
  idmap.put("checkbox8",ID_CHECKBOX8);
  idmap.put("label12",ID_LABEL12);
  idmap.put("panel12",ID_PANEL12);
  idmap.put("checkbox9",ID_CHECKBOX9);
  idmap.put("label13",ID_LABEL13);
  idmap.put("panel13",ID_PANEL13);
  idmap.put("checkbox10",ID_CHECKBOX10);
  idmap.put("label14",ID_LABEL14);
  idmap.put("panel14",ID_PANEL14);
  idmap.put("checkbox11",ID_CHECKBOX11);
  idmap.put("label15",ID_LABEL15);

	}
	
	public void onLoad() {
		ULog.logLC("onLoad", this);
		if(currentPage!=null) {
			currentPage.onLoad();
		}
	
		
	}
	
	public void onDatabinding() {
		ULog.logLC("onDatabinding", this);
		super.onDatabinding();
		
	}
	
	@Override
	public void onReturn(String methodName, Object returnValue) {
		
	}

	@Override
	public void onAfterInit() {
		ULog.logLC("onAfterInit", this);
		
		onLoad();
	}
	
		@Override
	public Map<String,String> getPlugout(String id) {
		XJSON from = this.getUMContext();
		Map<String,String> r = super.getPlugout(id);
		
		return r;	
	}
	
	
	
	public View getNavigatorbar0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
navigatorbar0 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_NAVIGATORBAR0
,"padding-left","8"
,"padding-right","8"
,"halign","LEFT"
,"height","56"
,"color","#ffffff"
,"width","fill"
,"font-size","17"
,"background","#00a1ea"
,"layout-type","linear"
,"font-family","default"
,"valign","center"
);
button0 = (UMButton)ThirdControl.createControl(new UMButton(context),ID_BUTTON0
,"padding-left","20"
,"halign","left"
,"width","44"
,"font-pressed-color","#00a1ea"
,"height","44"
,"color","#ffffff"
,"font-size","20"
,"layout-type","linear"
,"onclick","action:button0_onclick"
,"font-family","default"
,"valign","center"
,"background-image","icon_back.png"
);
button0.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(ErrorTopicActivity.this);
    actionButton0_onclick(button0,args);

}
});
navigatorbar0.addView(button0);
label0 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL0
,"halign","center"
,"height","fill"
,"weight","1"
,"color","#000000"
,"layout-type","linear"
,"font-size","14"
,"width","0"
,"font-family","default"
,"valign","center"
);
navigatorbar0.addView(label0);
imagebutton0 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON0
,"halign","center"
,"width","55"
,"icon-width","32"
,"istogglebutton","false"
,"icon-height","32"
,"height","55"
,"color","#FFFFFF"
,"layout-type","linear"
,"font-size","12"
,"value","详解"
,"icon-background-image","icon_questions.png"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","0"
);
navigatorbar0.addView(imagebutton0);
imagebutton1 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON1
,"halign","center"
,"width","55"
,"icon-width","32"
,"istogglebutton","false"
,"icon-height","32"
,"height","55"
,"color","#FFFFFF"
,"layout-type","linear"
,"font-size","12"
,"value","1/100"
,"icon-background-image","icon_database.png"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","0"
);
navigatorbar0.addView(imagebutton1);
imagebutton2 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON2
,"halign","center"
,"width","55"
,"icon-width","32"
,"istogglebutton","false"
,"icon-height","32"
,"height","55"
,"color","#FFFFFF"
,"layout-type","linear"
,"font-size","12"
,"value","删除"
,"icon-background-image","icon_close.png"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","0"
);
navigatorbar0.addView(imagebutton2);

return navigatorbar0;
}
public View getPanel1View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel1 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL1
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"valign","center"
);
checkbox0 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX0
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"checked","checked"
,"check-off-image","checkbox_noselect"
);
panel1.addView(checkbox0);
label2 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL2
,"content","预定利率"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel1.addView(label2);

return panel1;
}
public View getPanel2View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel2 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL2
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox1 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX1
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel2.addView(checkbox1);
label3 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL3
,"content","意外的持续时间"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel2.addView(label3);

return panel2;
}
public View getPanel3View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel3 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL3
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox2 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX2
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel3.addView(checkbox2);
label4 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL4
,"content","被保险人的职业、工种"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel3.addView(label4);

return panel3;
}
public View getPanel4View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel4 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL4
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox3 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX3
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel4.addView(checkbox3);
label5 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL5
,"content","被保险人的死亡率"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel4.addView(label5);

return panel4;
}
public View getPanel0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel0 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL0
,"halign","center"
,"title","页面1"
,"height","fill"
,"layout-type","vbox"
,"width","fill"
,"valign","TOP"
);
label1 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL1
,"halign","left"
,"width","fill"
,"margin-bottom","10"
,"type","multiline"
,"content","一年期的意外伤害保险费率厘定的因素主要是考虑？ "
,"margin-right","15"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"margin-left","15"
,"font-family","default"
,"margin-top","20"
,"valign","top"
);
panel0.addView(label1);
View panel1 = (View) getPanel1View((UMActivity)context,binderGroup,configure);
panel0.addView(panel1);
View panel2 = (View) getPanel2View((UMActivity)context,binderGroup,configure);
panel0.addView(panel2);
View panel3 = (View) getPanel3View((UMActivity)context,binderGroup,configure);
panel0.addView(panel3);
View panel4 = (View) getPanel4View((UMActivity)context,binderGroup,configure);
panel0.addView(panel4);

return panel0;
}
public View getPanel6View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel6 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL6
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"valign","center"
);
checkbox4 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX4
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"checked","checked"
,"check-off-image","checkbox_noselect"
);
panel6.addView(checkbox4);
label7 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL7
,"content","参与生产企业的年度生产计划的制定"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel6.addView(label7);

return panel6;
}
public View getPanel7View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel7 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL7
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox5 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX5
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel7.addView(checkbox5);
label8 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL8
,"content","受理经营者的投诉，并对投诉事项进行调查、调解"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel7.addView(label8);

return panel7;
}
public View getPanel8View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel8 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL8
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox6 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX6
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel8.addView(checkbox6);
label9 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL9
,"content","参与销售企业市场开拓计划的制定"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel8.addView(label9);

return panel8;
}
public View getPanel9View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel9 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL9
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox7 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX7
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel9.addView(checkbox7);
label10 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL10
,"content","对损害消费者合法权益的行为，通过大众传播媒介予以揭露、批评"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel9.addView(label10);

return panel9;
}
public View getPanel5View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel5 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL5
,"halign","center"
,"title","页面2"
,"height","fill"
,"layout-type","vbox"
,"width","fill"
,"valign","TOP"
);
label6 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL6
,"halign","left"
,"width","fill"
,"margin-bottom","10"
,"type","multiline"
,"content","根据我国消费者权益保护法的规定，消费者协会履行的职能之一是？ "
,"margin-right","15"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"margin-left","15"
,"font-family","default"
,"margin-top","20"
,"valign","top"
);
panel5.addView(label6);
View panel6 = (View) getPanel6View((UMActivity)context,binderGroup,configure);
panel5.addView(panel6);
View panel7 = (View) getPanel7View((UMActivity)context,binderGroup,configure);
panel5.addView(panel7);
View panel8 = (View) getPanel8View((UMActivity)context,binderGroup,configure);
panel5.addView(panel8);
View panel9 = (View) getPanel9View((UMActivity)context,binderGroup,configure);
panel5.addView(panel9);

return panel5;
}
public View getPanel11View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel11 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL11
,"margin-right","10"
,"halign","LEFT"
,"height","wrap"
,"heightwrap","44.0"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"valign","center"
);
checkbox8 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX8
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"checked","checked"
,"check-off-image","checkbox_noselect"
);
panel11.addView(checkbox8);
label12 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL12
,"content","人身风险的特殊性"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel11.addView(label12);

return panel11;
}
public View getPanel12View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel12 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL12
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox9 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX9
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel12.addView(checkbox9);
label13 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL13
,"content","保险标的的特殊性"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel12.addView(label13);

return panel12;
}
public View getPanel13View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel13 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL13
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox10 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX10
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel13.addView(checkbox10);
label14 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL14
,"content","保险费率厘定的特殊性"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel13.addView(label14);

return panel13;
}
public View getPanel14View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel14 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL14
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
checkbox11 = (UMCheckbox)ThirdControl.createControl(new UMCheckbox(context),ID_CHECKBOX11
,"height","44"
,"layout-type","linear"
,"width","44"
,"check-on-image","checkbox_select"
,"check-off-image","checkbox_noselect"
);
panel14.addView(checkbox11);
label15 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL15
,"content","保险金额确定的特殊性"
,"halign","left"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"width","fill"
,"font-family","default"
,"valign","center"
,"type","multiline"
);
panel14.addView(label15);

return panel14;
}
public View getPanel10View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel10 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL10
,"halign","center"
,"title","页面3"
,"height","fill"
,"layout-type","vbox"
,"width","fill"
,"valign","TOP"
);
label11 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL11
,"halign","left"
,"width","fill"
,"margin-bottom","10"
,"type","multiline"
,"content","下列不属于人身保险特征的是？ "
,"margin-right","15"
,"height","wrap"
,"color","#000000"
,"heightwrap","44.0"
,"layout-type","linear"
,"font-size","16"
,"margin-left","15"
,"font-family","default"
,"margin-top","20"
,"valign","top"
);
panel10.addView(label11);
View panel11 = (View) getPanel11View((UMActivity)context,binderGroup,configure);
panel10.addView(panel11);
View panel12 = (View) getPanel12View((UMActivity)context,binderGroup,configure);
panel10.addView(panel12);
View panel13 = (View) getPanel13View((UMActivity)context,binderGroup,configure);
panel10.addView(panel13);
View panel14 = (View) getPanel14View((UMActivity)context,binderGroup,configure);
panel10.addView(panel14);

return panel10;
}
public View getFlipperdefine0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
flipperdefine0 = (UMViewFlipper)ThirdControl.createControl(new UMViewFlipper(context),ID_FLIPPERDEFINE0
,"halign","center"
,"height","0"
,"weight","1"
,"layout","vbox"
,"width","fill"
,"viewindex","0"
,"valign","TOP"
);
View panel0 = (View) getPanel0View((UMActivity)context,binderGroup,configure);
flipperdefine0.addView(panel0);
View panel5 = (View) getPanel5View((UMActivity)context,binderGroup,configure);
flipperdefine0.addView(panel5);
View panel10 = (View) getPanel10View((UMActivity)context,binderGroup,configure);
flipperdefine0.addView(panel10);

return flipperdefine0;
}
public View getViewPage0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
viewPage0 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_VIEWPAGE0
,"halign","center"
,"height","fill"
,"layout-type","vbox"
,"background","#F5F5F5"
,"width","fill"
,"valign","TOP"
);
View navigatorbar0 = (View) getNavigatorbar0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(navigatorbar0);
View flipperdefine0 = (View) getFlipperdefine0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(flipperdefine0);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
ErrorTopic = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_ERRORTOPIC
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","ErrorTopicController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
ErrorTopic.addView(viewPage0);

return (UMWindow)ErrorTopic;
}

	
	public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeErrorTopic()",UMActivity.getViewId(control),args);
}


}
