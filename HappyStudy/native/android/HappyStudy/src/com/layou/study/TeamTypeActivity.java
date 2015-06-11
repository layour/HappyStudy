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

public abstract class TeamTypeActivity extends UMWindowActivity {

	protected UMWindow TeamType = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected XVerticalLayout panel0 = null;
protected UMCustomPickerLayout picker0 = null;
protected UMCustomPickerItem picker0_0 = null;
protected UMCustomPickerItem picker0_1 = null;
protected UMCustomPickerItem picker0_2 = null;
protected UMButton button1 = null;

	
	protected final static int ID_TEAMTYPE = 53528532;
protected final static int ID_VIEWPAGE0 = 958727318;
protected final static int ID_NAVIGATORBAR0 = 477191694;
protected final static int ID_BUTTON0 = 620540164;
protected final static int ID_LABEL0 = 39413488;
protected final static int ID_PANEL0 = 334156325;
protected final static int ID_PICKER0 = 754294686;
protected final static int ID_PICKER0_0 = 86573457;
protected final static int ID_PICKER0_1 = 700645643;
protected final static int ID_PICKER0_2 = 1750236161;
protected final static int ID_BUTTON1 = 1190204520;

	
	
	@Override
	public String getControllerName() {
		return "TeamTypeController";
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
		  idmap.put("TeamType",ID_TEAMTYPE);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("picker0",ID_PICKER0);
  idmap.put("picker0_0",ID_PICKER0_0);
  idmap.put("picker0_1",ID_PICKER0_1);
  idmap.put("picker0_2",ID_PICKER0_2);
  idmap.put("button1",ID_BUTTON1);

	}
	
	public void onLoad() {
		ULog.logLC("onLoad", this);
		if(currentPage!=null) {
			currentPage.onLoad();
		}
	
		{ //picker0 - action:picker0_onload
    UMEventArgs args = new UMEventArgs(TeamTypeActivity.this);
    actionPicker0_onload(picker0,args);

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
,"title","注册"
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
    UMEventArgs args = new UMEventArgs(TeamTypeActivity.this);
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
public View getPicker0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
picker0 = (UMCustomPickerLayout)ThirdControl.createControl(new UMCustomPickerLayout(context),ID_PICKER0
,"margin-right","10"
,"height","186"
,"onload","action:picker0_onload"
,"layout-type","linear"
,"width","fill"
,"margin-left","10"
,"margin-top","10"
);
picker0_0 = (UMCustomPickerItem)ThirdControl.createControl(new UMCustomPickerItem(context),ID_PICKER0_0
,"bindfield","city"
,"onselectedchange",""
,"layout-type","linear"
,"value","合肥"
,"datasource","citys"
);
UMCustomPickerItemBinder picker0_0_binder = new UMCustomPickerItemBinder((IUMContextAccessor)context);
picker0_0_binder.setBindInfo(new BindInfo("city"));
picker0_0_binder.setControl(picker0_0);
binderGroup.addBinderToGroup(ID_PICKER0_0, picker0_0_binder);
picker0.addView(picker0_0);
picker0_1 = (UMCustomPickerItem)ThirdControl.createControl(new UMCustomPickerItem(context),ID_PICKER0_1
,"bindfield","type"
,"onselectedchange",""
,"layout-type","linear"
,"value","岗前班"
,"datasource","types"
);
UMCustomPickerItemBinder picker0_1_binder = new UMCustomPickerItemBinder((IUMContextAccessor)context);
picker0_1_binder.setBindInfo(new BindInfo("type"));
picker0_1_binder.setControl(picker0_1);
binderGroup.addBinderToGroup(ID_PICKER0_1, picker0_1_binder);
picker0.addView(picker0_1);
picker0_2 = (UMCustomPickerItem)ThirdControl.createControl(new UMCustomPickerItem(context),ID_PICKER0_2
,"bindfield","team"
,"onselectedchange",""
,"layout-type","linear"
,"value","201512"
,"datasource","teams"
);
UMCustomPickerItemBinder picker0_2_binder = new UMCustomPickerItemBinder((IUMContextAccessor)context);
picker0_2_binder.setBindInfo(new BindInfo("team"));
picker0_2_binder.setControl(picker0_2);
binderGroup.addBinderToGroup(ID_PICKER0_2, picker0_2_binder);
picker0.addView(picker0_2);

return picker0;
}
public View getPanel0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel0 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL0
,"halign","center"
,"height","0"
,"weight","1"
,"layout-type","linear"
,"width","fill"
,"valign","TOP"
);
View picker0 = (View) getPicker0View((UMActivity)context,binderGroup,configure);
panel0.addView(picker0);
button1 = (UMButton)ThirdControl.createControl(new UMButton(context),ID_BUTTON1
,"border-bottom-width","1"
,"font-pressed-color","#ffffff"
,"margin-right","10"
,"height","44"
,"border-right-color","#f7931e"
,"font-size","20"
,"value","完成"
,"border-right-width","1"
,"border-left-width","1"
,"halign","center"
,"border-radius","10"
,"width","fill"
,"border-bottom-color","#f7931e"
,"border-top-width","1"
,"border-top-color","#f7931e"
,"border-left-color","#f7931e"
,"color","#ffffff"
,"background","#f7931e"
,"layout-type","linear"
,"margin-left","10"
,"onclick","action:button1_onclick"
,"font-family","default"
,"margin-top","20"
,"valign","center"
);
button1.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(TeamTypeActivity.this);
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
TeamType = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_TEAMTYPE
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","TeamTypeController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
TeamType.addView(viewPage0);

return (UMWindow)TeamType;
}

	
	public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeTeamType()",UMActivity.getViewId(control),args);
}
public void actionButton1_onclick(View control, UMEventArgs args) {
    String actionid = "button1_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.registerJs()",UMActivity.getViewId(control),args);
}
public void actionPicker0_onload(View control, UMEventArgs args) {
    String actionid = "picker0_onload";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.loadTeamType()",UMActivity.getViewId(control),args);
}


}
