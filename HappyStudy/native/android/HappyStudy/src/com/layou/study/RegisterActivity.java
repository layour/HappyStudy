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

public abstract class RegisterActivity extends UMWindowActivity {

	protected UMWindow Register = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected XVerticalLayout wloginpanel = null;
protected UMTextbox wmailtext = null;
protected UMTextbox wusertext = null;
protected XHorizontalLayout panel0 = null;
protected UMToggleButtonGroup togglebuttongroup0 = null;
protected UMToggleButton togglebutton0 = null;
protected UMToggleButton togglebutton1 = null;
protected UMTextbox wpasstext = null;
protected UMTextbox textbox2 = null;
protected UMTextbox textbox0 = null;
protected UMButton wregisterbutton = null;

	
	protected final static int ID_REGISTER = 430135747;
protected final static int ID_VIEWPAGE0 = 733752592;
protected final static int ID_NAVIGATORBAR0 = 738148604;
protected final static int ID_BUTTON0 = 462824381;
protected final static int ID_LABEL0 = 1643739106;
protected final static int ID_WLOGINPANEL = 1062960735;
protected final static int ID_WMAILTEXT = 1050459551;
protected final static int ID_WUSERTEXT = 2099451526;
protected final static int ID_PANEL0 = 1924116348;
protected final static int ID_TOGGLEBUTTONGROUP0 = 238341638;
protected final static int ID_TOGGLEBUTTON0 = 386488684;
protected final static int ID_TOGGLEBUTTON1 = 1209516103;
protected final static int ID_WPASSTEXT = 700321917;
protected final static int ID_TEXTBOX2 = 1084025460;
protected final static int ID_TEXTBOX0 = 689849358;
protected final static int ID_WREGISTERBUTTON = 2025822373;

	
	
	@Override
	public String getControllerName() {
		return "RegisterController";
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
		  idmap.put("Register",ID_REGISTER);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("wloginpanel",ID_WLOGINPANEL);
  idmap.put("wmailtext",ID_WMAILTEXT);
  idmap.put("wusertext",ID_WUSERTEXT);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("togglebuttongroup0",ID_TOGGLEBUTTONGROUP0);
  idmap.put("togglebutton0",ID_TOGGLEBUTTON0);
  idmap.put("togglebutton1",ID_TOGGLEBUTTON1);
  idmap.put("wpasstext",ID_WPASSTEXT);
  idmap.put("textbox2",ID_TEXTBOX2);
  idmap.put("textbox0",ID_TEXTBOX0);
  idmap.put("wregisterbutton",ID_WREGISTERBUTTON);

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
,"title","基本信息"
,"height","44.0"
,"color","#ffffff"
,"layout-type","linear"
,"font-size","17"
,"background","#00a1ea"
,"font-family","default"
,"valign","center"
);
button0 = (UMButton)ThirdControl.createControl(new UMButton(context),ID_BUTTON0
,"halign","center"
,"height","44"
,"color","#ffffff"
,"layout-type","linear"
,"width","44"
,"font-size","20"
,"onclick","action:button0_onclick"
,"font-family","default"
,"font-pressed-color","#00a1ea"
,"valign","center"
,"background-image","icon_back.png"
);
button0.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(RegisterActivity.this);
    actionButton0_onclick(button0,args);

}
});
navigatorbar0.addView(button0);
label0 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL0
,"halign","center"
,"height","fill"
,"weight","1"
,"layout-type","linear"
,"width","0"
,"font-family","default"
,"valign","center"
);
navigatorbar0.addView(label0);

return navigatorbar0;
}
public View getTogglebuttongroup0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
togglebuttongroup0 = (UMToggleButtonGroup)ThirdControl.createControl(new UMToggleButtonGroup(context),ID_TOGGLEBUTTONGROUP0
,"halign","CENTER"
,"height","44"
,"layout","hbox"
,"width","88"
,"valign","top"
);
togglebutton0 = (UMToggleButton)ThirdControl.createControl(new UMToggleButton(context),ID_TOGGLEBUTTON0
,"halign","center"
,"background-image-off","label_4_left"
,"width","44.0"
,"textoff","男"
,"font-pressed-color","#ffffff"
,"type","button"
,"background-image-on","label_4_left_touch"
,"height","42.0"
,"color","#00a1ea"
,"layout-type","hbox"
,"font-size","17"
,"value","0"
,"font-family","default"
,"texton","男"
,"valign","center"
,"checked","true"
);
togglebuttongroup0.addView(togglebutton0);
togglebutton1 = (UMToggleButton)ThirdControl.createControl(new UMToggleButton(context),ID_TOGGLEBUTTON1
,"halign","center"
,"background-image-off","label_4_right"
,"width","44.0"
,"textoff","女"
,"font-pressed-color","#ffffff"
,"type","button"
,"background-image-on","label_4_right_touch"
,"height","42.0"
,"color","#00a1ea"
,"layout-type","hbox"
,"font-size","17"
,"value","1"
,"font-family","default"
,"texton","女"
,"valign","center"
);
togglebuttongroup0.addView(togglebutton1);

return togglebuttongroup0;
}
public View getPanel0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel0 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL0
,"padding-left","24"
,"margin-right","10"
,"halign","LEFT"
,"height","44"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","5"
,"valign","center"
);
View togglebuttongroup0 = (View) getTogglebuttongroup0View((UMActivity)context,binderGroup,configure);
panel0.addView(togglebuttongroup0);

return panel0;
}
public View getWloginpanelView(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
wloginpanel = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_WLOGINPANEL
,"halign","center"
,"height","fill"
,"layout-type","linear"
,"background","#f2f2f2"
,"width","fill"
,"valign","TOP"
);
wmailtext = (UMTextbox)ThirdControl.createControl(new UMTextbox(context),ID_WMAILTEXT
,"padding-left","24"
,"halign","LEFT"
,"placeholder","手机号"
,"width","fill"
,"margin-right","10"
,"maxlength","256"
,"height","44"
,"color","#167ef8"
,"layout-type","linear"
,"font-size","17"
,"margin-left","10"
,"font-family","default"
,"margin-top","10"
,"background-image","textboxbg.png"
);
wloginpanel.addView(wmailtext);
wusertext = (UMTextbox)ThirdControl.createControl(new UMTextbox(context),ID_WUSERTEXT
,"padding-left","24"
,"halign","LEFT"
,"placeholder","姓名"
,"width","fill"
,"margin-right","10"
,"maxlength","256"
,"height","44"
,"color","#167ef8"
,"layout-type","linear"
,"font-size","17"
,"margin-left","10"
,"font-family","default"
,"margin-top","5"
,"background-image","textboxbg.png"
);
wloginpanel.addView(wusertext);
View panel0 = (View) getPanel0View((UMActivity)context,binderGroup,configure);
wloginpanel.addView(panel0);
wpasstext = (UMTextbox)ThirdControl.createControl(new UMTextbox(context),ID_WPASSTEXT
,"padding-left","24"
,"halign","LEFT"
,"placeholder","身份证号"
,"width","fill"
,"margin-right","10"
,"maxlength","256"
,"height","44"
,"color","#167ef8"
,"layout-type","linear"
,"font-size","17"
,"margin-left","10"
,"font-family","default"
,"margin-top","5"
,"background-image","textboxbg.png"
);
wloginpanel.addView(wpasstext);
textbox2 = (UMTextbox)ThirdControl.createControl(new UMTextbox(context),ID_TEXTBOX2
,"padding-left","24"
,"halign","LEFT"
,"placeholder","推荐人工号"
,"width","fill"
,"margin-right","10"
,"maxlength","256"
,"height","44"
,"color","#167ef8"
,"layout-type","linear"
,"font-size","17"
,"margin-left","10"
,"font-family","default"
,"margin-top","5"
,"background-image","textboxbg.png"
);
wloginpanel.addView(textbox2);
textbox0 = (UMTextbox)ThirdControl.createControl(new UMTextbox(context),ID_TEXTBOX0
,"padding-left","24"
,"halign","LEFT"
,"placeholder","推荐人手机号"
,"width","fill"
,"margin-right","10"
,"maxlength","256"
,"height","44"
,"color","#167ef8"
,"layout-type","linear"
,"font-size","17"
,"margin-left","10"
,"font-family","default"
,"margin-top","5"
,"background-image","textboxbg.png"
);
wloginpanel.addView(textbox0);
wregisterbutton = (UMButton)ThirdControl.createControl(new UMButton(context),ID_WREGISTERBUTTON
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
,"value","下一步"
,"onclick","action:wregisterbutton_onclick"
,"font-family","default"
,"margin-top","20"
,"valign","center"
,"border-left-width","1"
);
wregisterbutton.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(RegisterActivity.this);
    actionWregisterbutton_onclick(wregisterbutton,args);

}
});
wloginpanel.addView(wregisterbutton);

return wloginpanel;
}
public View getViewPage0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
viewPage0 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_VIEWPAGE0
,"halign","center"
,"height","fill"
,"layout-type","vbox"
,"width","fill"
,"background","#F5F5F5"
,"valign","TOP"
);
View navigatorbar0 = (View) getNavigatorbar0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(navigatorbar0);
View wloginpanel = (View) getWloginpanelView((UMActivity)context,binderGroup,configure);
viewPage0.addView(wloginpanel);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
Register = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_REGISTER
,"halign","center"
,"height","500"
,"width","fill"
,"layout","vbox"
,"controller","RegisterController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
Register.addView(viewPage0);

return (UMWindow)Register;
}

	
	public void actionWregisterbutton_onclick(View control, UMEventArgs args) {
    String actionid = "wregisterbutton_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.nextJs()",UMActivity.getViewId(control),args);
}
public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeRegister()",UMActivity.getViewId(control),args);
}


}
