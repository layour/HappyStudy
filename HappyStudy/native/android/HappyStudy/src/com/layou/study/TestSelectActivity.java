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

public abstract class TestSelectActivity extends UMWindowActivity {

	protected UMWindow TestSelect = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected XVerticalLayout panel0 = null;
protected UMImageButton imagebutton0 = null;
protected UMLabel label1 = null;
protected UMLabel label2 = null;
protected UMLabel label3 = null;
protected UMLabel label4 = null;
protected UMLabel label5 = null;
protected UMButton button1 = null;

	
	protected final static int ID_TESTSELECT = 416707566;
protected final static int ID_VIEWPAGE0 = 609772179;
protected final static int ID_NAVIGATORBAR0 = 71195214;
protected final static int ID_BUTTON0 = 2116362236;
protected final static int ID_LABEL0 = 1114757285;
protected final static int ID_PANEL0 = 232236067;
protected final static int ID_IMAGEBUTTON0 = 2146518586;
protected final static int ID_LABEL1 = 546440564;
protected final static int ID_LABEL2 = 1692818780;
protected final static int ID_LABEL3 = 1623139897;
protected final static int ID_LABEL4 = 162383693;
protected final static int ID_LABEL5 = 1867669579;
protected final static int ID_BUTTON1 = 1737574690;

	
	
	@Override
	public String getControllerName() {
		return "TestSelectController";
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
		  idmap.put("TestSelect",ID_TESTSELECT);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("imagebutton0",ID_IMAGEBUTTON0);
  idmap.put("label1",ID_LABEL1);
  idmap.put("label2",ID_LABEL2);
  idmap.put("label3",ID_LABEL3);
  idmap.put("label4",ID_LABEL4);
  idmap.put("label5",ID_LABEL5);
  idmap.put("button1",ID_BUTTON1);

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
,"width","fill"
,"title","模拟考试"
,"height","44.0"
,"color","#ffffff"
,"layout-type","linear"
,"font-size","17"
,"background","#00a1ea"
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
    UMEventArgs args = new UMEventArgs(TestSelectActivity.this);
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

return navigatorbar0;
}
public View getPanel0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel0 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL0
,"halign","center"
,"height","0"
,"weight","1"
,"layout-type","linear"
,"background","#00a1ea"
,"width","fill"
,"valign","CENTER"
);
imagebutton0 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON0
,"halign","center"
,"width","88"
,"icon-width","88"
,"margin-bottom","20"
,"istogglebutton","false"
,"font-pressed-color","#00a1ea"
,"imagebuttontype","icon"
,"icon-height","88"
,"height","88"
,"color","#919191"
,"layout-type","linear"
,"font-size","10"
,"icon-background-image","myhead.png"
,"value","图标名称"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
panel0.addView(imagebutton0);
label1 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL1
,"halign","center"
,"widthwrap","30.0"
,"width","wrap"
,"margin-bottom","10"
,"content","张三"
,"height","wrap"
,"color","#FFFFFF"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"font-family","default"
,"valign","center"
);
panel0.addView(label1);
label2 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL2
,"content","岗前班-201512 | 中国平安培训"
,"halign","left"
,"height","wrap"
,"color","#FFFFFF"
,"heightwrap","20.0"
,"layout-type","linear"
,"font-size","14"
,"width","190"
,"font-family","default"
,"valign","top"
,"type","multiline"
);
panel0.addView(label2);
label3 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL3
,"halign","left"
,"width","190"
,"type","multiline"
,"content","考试题库：100题"
,"height","wrap"
,"color","#FFFFFF"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"font-family","default"
,"margin-top","40"
,"valign","top"
);
panel0.addView(label3);
label4 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL4
,"halign","left"
,"width","190"
,"type","multiline"
,"content","考试时间：120分钟"
,"height","wrap"
,"color","#FFFFFF"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"font-family","default"
,"margin-top","15"
,"valign","top"
);
panel0.addView(label4);
label5 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL5
,"halign","left"
,"width","190"
,"type","multiline"
,"content","合格标准：满分100,90及格"
,"height","wrap"
,"color","#FFFFFF"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"font-family","default"
,"margin-top","15"
,"valign","top"
);
panel0.addView(label5);
button1 = (UMButton)ThirdControl.createControl(new UMButton(context),ID_BUTTON1
,"border-bottom-width","1"
,"halign","center"
,"border-radius","10"
,"width","fill"
,"border-bottom-color","#ffffff"
,"border-top-width","1"
,"margin-right","10"
,"border-top-color","#ffffff"
,"border-left-color","#ffffff"
,"height","44"
,"color","#00a1ea"
,"border-right-color","#ffffff"
,"layout-type","linear"
,"background","#FFFFFF"
,"font-size","20"
,"margin-left","10"
,"border-right-width","1"
,"value","全真模拟考试"
,"onclick","action:button1_onclick"
,"font-family","default"
,"margin-top","40"
,"valign","center"
,"border-left-width","1"
);
button1.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(TestSelectActivity.this);
    actionButton1_onclick(button1,args);

}
});
panel0.addView(button1);

return panel0;
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
View panel0 = (View) getPanel0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel0);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
TestSelect = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_TESTSELECT
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","TestSelectController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
TestSelect.addView(viewPage0);

return (UMWindow)TestSelect;
}

	
	public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeTestSelect()",UMActivity.getViewId(control),args);
}
public void actionButton1_onclick(View control, UMEventArgs args) {
    String actionid = "button1_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.enterExamTopic()",UMActivity.getViewId(control),args);
}


}
