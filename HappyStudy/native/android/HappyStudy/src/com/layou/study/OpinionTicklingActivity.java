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

public abstract class OpinionTicklingActivity extends UMWindowActivity {

	protected UMWindow OpinionTickling = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected UMButton button1 = null;
protected UMLabel label1 = null;
protected UMTextArea textarea0 = null;
protected UMTextbox textbox0 = null;
protected UMButton button3 = null;

	
	protected final static int ID_OPINIONTICKLING = 1455821491;
protected final static int ID_VIEWPAGE0 = 1566930051;
protected final static int ID_NAVIGATORBAR0 = 2045179706;
protected final static int ID_BUTTON0 = 1811917486;
protected final static int ID_LABEL0 = 1303915384;
protected final static int ID_BUTTON1 = 1848520222;
protected final static int ID_LABEL1 = 791904899;
protected final static int ID_TEXTAREA0 = 1539518923;
protected final static int ID_TEXTBOX0 = 1009842633;
protected final static int ID_BUTTON3 = 1489686700;

	
	
	@Override
	public String getControllerName() {
		return "OpinionTicklingController";
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
		  idmap.put("OpinionTickling",ID_OPINIONTICKLING);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("button1",ID_BUTTON1);
  idmap.put("label1",ID_LABEL1);
  idmap.put("textarea0",ID_TEXTAREA0);
  idmap.put("textbox0",ID_TEXTBOX0);
  idmap.put("button3",ID_BUTTON3);

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
,"title","意见反馈"
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
    UMEventArgs args = new UMEventArgs(OpinionTicklingActivity.this);
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
button1 = (UMButton)ThirdControl.createControl(new UMButton(context),ID_BUTTON1
,"halign","right"
,"height","44"
,"color","#ffffff"
,"layout-type","linear"
,"width","44"
,"font-size","20"
,"onclick","action:button1_onclick"
,"font-family","default"
,"font-pressed-color","#00a1ea"
,"valign","center"
,"background-image","icon_envelope.png"
);
button1.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(OpinionTicklingActivity.this);
    actionButton1_onclick(button1,args);

}
});
navigatorbar0.addView(button1);

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
,"content","意见描述："
,"margin-right","10"
,"height","wrap"
,"color","#000000"
,"heightwrap","19.0"
,"font-size","14"
,"layout-type","linear"
,"margin-left","10"
,"font-family","default"
,"margin-top","10"
,"valign","center"
);
viewPage0.addView(label1);
textarea0 = (UMTextArea)ThirdControl.createControl(new UMTextArea(context),ID_TEXTAREA0
,"padding-left","4"
,"padding-top","14"
,"halign","LEFT"
,"placeholder","请详述您的问题，我们会在最短的时间内核对并更改。（200字以内）"
,"width","fill"
,"padding-bottom","14"
,"margin-right","10"
,"height","128"
,"color","#167ef8"
,"layout-type","linear"
,"background","#ffffff"
,"font-size","14"
,"margin-left","10"
,"font-family","default"
);
viewPage0.addView(textarea0);
textbox0 = (UMTextbox)ThirdControl.createControl(new UMTextbox(context),ID_TEXTBOX0
,"padding-left","4"
,"halign","LEFT"
,"placeholder","输入您的手机号或邮箱"
,"width","fill"
,"margin-right","10"
,"maxlength","256"
,"height","44"
,"color","#167ef8"
,"layout-type","linear"
,"font-size","14"
,"background","#ffffff"
,"margin-left","10"
,"font-family","default"
,"margin-top","10"
);
viewPage0.addView(textbox0);
button3 = (UMButton)ThirdControl.createControl(new UMButton(context),ID_BUTTON3
,"border-bottom-width","1"
,"halign","center"
,"border-radius","10"
,"width","fill"
,"border-bottom-color","#f7931e"
,"border-top-width","1"
,"margin-right","10"
,"border-top-color","#f7931e"
,"border-left-color","#f7931e"
,"height","44"
,"color","#ffffff"
,"border-right-color","#f7931e"
,"layout-type","linear"
,"background","#f7931e"
,"font-size","20"
,"margin-left","10"
,"border-right-width","1"
,"value","提交"
,"font-family","default"
,"margin-top","20"
,"valign","center"
,"border-left-width","1"
);
viewPage0.addView(button3);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
OpinionTickling = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_OPINIONTICKLING
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","OpinionTicklingController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
OpinionTickling.addView(viewPage0);

return (UMWindow)OpinionTickling;
}

	
	public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeOpinionTickling()",UMActivity.getViewId(control),args);
}
public void actionButton1_onclick(View control, UMEventArgs args) {
    String actionid = "button1_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.openOpinionDetail()",UMActivity.getViewId(control),args);
}


}
