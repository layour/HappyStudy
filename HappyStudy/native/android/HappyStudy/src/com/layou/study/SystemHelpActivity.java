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

public abstract class SystemHelpActivity extends UMWindowActivity {

	protected UMWindow SystemHelp = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected UMLabel label1 = null;
protected UMLabel label2 = null;
protected UMLabel label3 = null;
protected UMLabel label4 = null;
protected UMLabel label5 = null;
protected UMLabel label6 = null;
protected UMLabel label7 = null;

	
	protected final static int ID_SYSTEMHELP = 1908076347;
protected final static int ID_VIEWPAGE0 = 1599889868;
protected final static int ID_NAVIGATORBAR0 = 203850057;
protected final static int ID_BUTTON0 = 550005249;
protected final static int ID_LABEL0 = 503763130;
protected final static int ID_LABEL1 = 1556937869;
protected final static int ID_LABEL2 = 310204968;
protected final static int ID_LABEL3 = 1536923636;
protected final static int ID_LABEL4 = 700077736;
protected final static int ID_LABEL5 = 926118564;
protected final static int ID_LABEL6 = 1263022375;
protected final static int ID_LABEL7 = 641722222;

	
	
	@Override
	public String getControllerName() {
		return "SystemHelpController";
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
		  idmap.put("SystemHelp",ID_SYSTEMHELP);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("label1",ID_LABEL1);
  idmap.put("label2",ID_LABEL2);
  idmap.put("label3",ID_LABEL3);
  idmap.put("label4",ID_LABEL4);
  idmap.put("label5",ID_LABEL5);
  idmap.put("label6",ID_LABEL6);
  idmap.put("label7",ID_LABEL7);

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
,"title","系统帮助"
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
    UMEventArgs args = new UMEventArgs(SystemHelpActivity.this);
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
label1 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL1
,"halign","left"
,"width","fill"
,"content","常见问题"
,"margin-right","10"
,"height","wrap"
,"color","#808080"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"margin-left","10"
,"font-family","default"
,"margin-top","10"
,"valign","center"
);
viewPage0.addView(label1);
label2 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL2
,"border-bottom-width","1"
,"margin-right","10"
,"height","wrap"
,"border-right-color","#f7931e"
,"font-size","16"
,"border-right-width","1"
,"border-left-width","1"
,"padding-left","5"
,"halign","left"
,"border-radius","5"
,"width","fill"
,"margin-bottom","5"
,"border-bottom-color","#f7931e"
,"border-top-width","1"
,"content","1、如何进行签到/补签？"
,"border-top-color","#f7931e"
,"border-left-color","#f7931e"
,"color","#FFFFFF"
,"heightwrap","23.0"
,"background","#f7931e"
,"layout-type","linear"
,"margin-left","10"
,"font-family","default"
,"margin-top","5"
,"valign","center"
);
viewPage0.addView(label2);
label3 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL3
,"halign","left"
,"width","fill"
,"type","multiline"
,"content","进入快乐学->\"主页\"->轻触右上角图标或进入快乐学->\"主页\"->切换到下方签到页->轻触右上角图标（轻触下方签到、补签按钮）。"
,"margin-right","10"
,"height","wrap"
,"color","#808080"
,"heightwrap","80.0"
,"layout-type","linear"
,"font-size","14"
,"margin-left","10"
,"font-family","default"
,"margin-top","5"
,"valign","top"
);
viewPage0.addView(label3);
label4 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL4
,"border-bottom-width","1"
,"margin-right","10"
,"height","wrap"
,"border-right-color","#f7931e"
,"font-size","16"
,"border-right-width","1"
,"border-left-width","1"
,"padding-left","5"
,"halign","left"
,"border-radius","5"
,"width","fill"
,"margin-bottom","5"
,"border-bottom-color","#f7931e"
,"border-top-width","1"
,"content","2、如何进行注册/登录？"
,"border-left-color","#f7931e"
,"border-top-color","#f7931e"
,"color","#FFFFFF"
,"heightwrap","23.0"
,"background","#f7931e"
,"layout-type","linear"
,"margin-left","10"
,"font-family","default"
,"margin-top","20"
,"valign","center"
);
viewPage0.addView(label4);
label5 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL5
,"halign","left"
,"width","fill"
,"type","multiline"
,"content","首次进入快乐学->弹出注册页面->下一步->选择相关信息->完成即可完成注册；非首次进入快乐学会自动登录。"
,"margin-right","10"
,"height","wrap"
,"color","#808080"
,"heightwrap","80.0"
,"layout-type","linear"
,"font-size","14"
,"margin-left","10"
,"font-family","default"
,"margin-top","5"
,"valign","top"
);
viewPage0.addView(label5);
label6 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL6
,"border-bottom-width","1"
,"margin-right","10"
,"height","wrap"
,"border-right-color","#f7931e"
,"font-size","16"
,"border-right-width","1"
,"border-left-width","1"
,"padding-left","5"
,"halign","left"
,"border-radius","5"
,"width","fill"
,"margin-bottom","5"
,"border-bottom-color","#f7931e"
,"border-top-width","1"
,"content","3、如何进行练习/模拟考试？"
,"border-left-color","#f7931e"
,"border-top-color","#f7931e"
,"color","#FFFFFF"
,"heightwrap","23.0"
,"background","#f7931e"
,"layout-type","linear"
,"margin-left","10"
,"font-family","default"
,"margin-top","20"
,"valign","center"
);
viewPage0.addView(label6);
label7 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL7
,"halign","left"
,"width","fill"
,"type","multiline"
,"content","进入快乐学->选择章节练习或随机练习，即可进行练习；进入快乐学->选择模拟考试，即可进行模拟考试。"
,"margin-right","10"
,"height","wrap"
,"color","#808080"
,"heightwrap","80.0"
,"layout-type","linear"
,"font-size","14"
,"margin-left","10"
,"font-family","default"
,"margin-top","5"
,"valign","top"
);
viewPage0.addView(label7);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
SystemHelp = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_SYSTEMHELP
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","SystemHelpController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
SystemHelp.addView(viewPage0);

return (UMWindow)SystemHelp;
}

	
	public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeSystemHelp()",UMActivity.getViewId(control),args);
}


}
