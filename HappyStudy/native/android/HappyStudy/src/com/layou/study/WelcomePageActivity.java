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

public abstract class WelcomePageActivity extends UMWindowActivity {

	protected UMWindow WelcomePage = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout panel0 = null;
protected UMImage image0 = null;

	
	protected final static int ID_WELCOMEPAGE = 1412064163;
protected final static int ID_VIEWPAGE0 = 939921933;
protected final static int ID_PANEL0 = 1102231583;
protected final static int ID_IMAGE0 = 1141897052;

	
	
	@Override
	public String getControllerName() {
		return "WelcomePageController";
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
		  idmap.put("WelcomePage",ID_WELCOMEPAGE);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("image0",ID_IMAGE0);

	}
	
	public void onLoad() {
		ULog.logLC("onLoad", this);
		if(currentPage!=null) {
			currentPage.onLoad();
		}
	
		{ //panel0 - action:panel0_onload
    UMEventArgs args = new UMEventArgs(WelcomePageActivity.this);
    actionPanel0_onload(panel0,args);

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
	
	
	
	public View getPanel0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel0 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL0
,"height","fill"
,"onload","action:panel0_onload"
,"layout-type","linear"
,"width","fill"
,"valign","center"
);
image0 = (UMImage)ThirdControl.createControl(new UMImage(context),ID_IMAGE0
,"height","fill"
,"layout-type","linear"
,"width","fill"
,"scaletype","fitcenter"
,"src","welcome.png"
);
panel0.addView(image0);

return panel0;
}
public View getViewPage0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
viewPage0 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_VIEWPAGE0
,"halign","center"
,"height","fill"
,"layout-type","vbox"
,"width","fill"
,"background","#F5F5F5"
);
View panel0 = (View) getPanel0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel0);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
WelcomePage = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_WELCOMEPAGE
,"halign","center"
,"height","fill"
,"width","fill"
,"layout","vbox"
,"controller","WelcomePageController"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
WelcomePage.addView(viewPage0);

return (UMWindow)WelcomePage;
}

	
	public void actionPanel0_onload(View control, UMEventArgs args) {
    String actionid = "panel0_onload";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.panel0_onload()",UMActivity.getViewId(control),args);
}


}
