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

public abstract class ClockingInActivity extends UMWindowActivity {

	protected UMWindow ClockingIn = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected UMButton button1 = null;
protected UMListViewBase listviewdefine0 = null;
protected XVerticalLayout panel0 = null;
protected XHorizontalLayout panel1 = null;
protected UMLabel label1 = null;
protected UMLabel label2 = null;
protected XHorizontalLayout panel2 = null;
protected XHorizontalLayout panel3 = null;
protected UMButton button2 = null;
protected UMButton button3 = null;

	
	protected final static int ID_CLOCKINGIN = 418884247;
protected final static int ID_VIEWPAGE0 = 1045070840;
protected final static int ID_NAVIGATORBAR0 = 724947167;
protected final static int ID_BUTTON0 = 159023414;
protected final static int ID_LABEL0 = 849616632;
protected final static int ID_BUTTON1 = 272970349;
protected final static int ID_LISTVIEWDEFINE0 = 1254889763;
protected final static int ID_PANEL0 = 96580906;
protected final static int ID_PANEL1 = 1454161075;
protected final static int ID_LABEL1 = 1814556729;
protected final static int ID_LABEL2 = 1455047736;
protected final static int ID_PANEL2 = 418085692;
protected final static int ID_PANEL3 = 784117654;
protected final static int ID_BUTTON2 = 927779435;
protected final static int ID_BUTTON3 = 1496973071;

	
	
	@Override
	public String getControllerName() {
		return "ClockingInController";
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
		  idmap.put("ClockingIn",ID_CLOCKINGIN);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("button1",ID_BUTTON1);
  idmap.put("listviewdefine0",ID_LISTVIEWDEFINE0);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("panel1",ID_PANEL1);
  idmap.put("label1",ID_LABEL1);
  idmap.put("label2",ID_LABEL2);
  idmap.put("panel2",ID_PANEL2);
  idmap.put("panel3",ID_PANEL3);
  idmap.put("button2",ID_BUTTON2);
  idmap.put("button3",ID_BUTTON3);

	}
	
	public void onLoad() {
		ULog.logLC("onLoad", this);
		if(currentPage!=null) {
			currentPage.onLoad();
		}
	
		{ //listviewdefine0 - action:listviewdefine0_onload
    UMEventArgs args = new UMEventArgs(ClockingInActivity.this);
    actionListviewdefine0_onload(listviewdefine0,args);

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
,"title","签到"
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
    UMEventArgs args = new UMEventArgs(ClockingInActivity.this);
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
,"width","44.0"
,"font-size","20"
,"onclick","action:button1_onclick"
,"font-family","default"
,"font-pressed-color","#00a1ea"
,"valign","center"
,"background-image","icon_edit.png"
);
button1.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(ClockingInActivity.this);
    actionButton1_onclick(button1,args);

}
});
navigatorbar0.addView(button1);

return navigatorbar0;
}
public View getPanel1View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel1 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL1
,"padding-right","20"
,"padding-left","20"
,"halign","LEFT"
,"height","0"
,"weight","1"
,"layout-type","linear"
,"background","#FFFFFF"
,"width","fill"
,"valign","center"
);
label1 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL1
,"bindfield","time"
,"halign","left"
,"weight","1"
,"width","0"
,"content","2015-05-26 15:59:00"
,"height","wrap"
,"color","#000000"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"font-family","default"
,"valign","center"
);
UMTextBinder label1_binder = new UMTextBinder((IUMContextAccessor)context);
label1_binder.setBindInfo(new BindInfo("time"));
label1_binder.setControl(label1);
binderGroup.addBinderToGroup(ID_LABEL1, label1_binder);
panel1.addView(label1);
label2 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL2
,"bindfield","type"
,"halign","center"
,"widthwrap","30.0"
,"width","wrap"
,"content","签到"
,"height","wrap"
,"color","#000000"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"font-family","default"
,"valign","center"
);
UMTextBinder label2_binder = new UMTextBinder((IUMContextAccessor)context);
label2_binder.setBindInfo(new BindInfo("type"));
label2_binder.setControl(label2);
binderGroup.addBinderToGroup(ID_LABEL2, label2_binder);
panel1.addView(label2);

return panel1;
}
public View getPanel0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel0 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL0
,"halign","center"
,"height","60.0"
,"layout-type","vbox"
,"width","fill"
,"valign","TOP"
);
View panel1 = (View) getPanel1View((UMActivity)context,binderGroup,configure);
panel0.addView(panel1);
panel2 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL2
,"halign","CENTER"
,"height","1"
,"layout-type","linear"
,"background","#c7c7c7"
,"width","fill"
,"valign","top"
);
panel0.addView(panel2);

return panel0;
}
public View getListviewdefine0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
listviewdefine0 = (UMListViewBase)ThirdControl.createControl(new UMListViewBase(context),ID_LISTVIEWDEFINE0
,"bindfield","list"
,"halign","center"
,"height","0"
,"weight","1"
,"onload","action:listviewdefine0_onload"
,"layout","vbox"
,"width","fill"
,"valign","TOP"
);
UMListBinder listviewdefine0_binder = new UMListBinder((IUMContextAccessor)context);
listviewdefine0_binder.setBindInfo(new BindInfo("list"));
listviewdefine0_binder.setControl(listviewdefine0);
binderGroup.addBinderToGroup(ID_LISTVIEWDEFINE0, listviewdefine0_binder);
listviewdefine0.addListItemView(new UMListViewBase.ListItemView() {
	public View getItemView(Context context, View parent, IBinderGroup binderGroup,int position) {
  UMDslConfigure configure = new UMDslConfigure();
  configure.put("position",position);
View panel0 = (View) getPanel0View((UMActivity)context,binderGroup,configure);
return panel0;
}});

return listviewdefine0;
}
public View getPanel3View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel3 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL3
,"margin-right","20"
,"halign","CENTER"
,"height","49"
,"layout-type","linear"
,"width","fill"
,"margin-left","20"
,"valign","center"
);
button2 = (UMButton)ThirdControl.createControl(new UMButton(context),ID_BUTTON2
,"border-bottom-width","1"
,"halign","center"
,"weight","1"
,"border-radius","10"
,"width","0"
,"border-bottom-color","#f7931e"
,"border-top-width","1"
,"margin-right","10"
,"border-left-color","#f7931e"
,"border-top-color","#f7931e"
,"height","36"
,"color","#ffffff"
,"border-right-color","#f7931e"
,"layout-type","linear"
,"background","#f7931e"
,"font-size","18"
,"border-right-width","1"
,"value","签到"
,"onclick","action:button2_onclick"
,"font-family","default"
,"valign","center"
,"border-left-width","1"
);
button2.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(ClockingInActivity.this);
    actionButton2_onclick(button2,args);

}
});
panel3.addView(button2);
button3 = (UMButton)ThirdControl.createControl(new UMButton(context),ID_BUTTON3
,"border-bottom-width","1"
,"halign","center"
,"weight","1"
,"border-radius","10"
,"width","0"
,"border-bottom-color","#f7931e"
,"border-top-width","1"
,"border-top-color","#f7931e"
,"border-left-color","#f7931e"
,"height","36"
,"color","#ffffff"
,"border-right-color","#f7931e"
,"layout-type","linear"
,"background","#f7931e"
,"font-size","18"
,"margin-left","10"
,"border-right-width","1"
,"value","补签"
,"font-family","default"
,"valign","center"
,"border-left-width","1"
);
panel3.addView(button3);

return panel3;
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
View listviewdefine0 = (View) getListviewdefine0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(listviewdefine0);
View panel3 = (View) getPanel3View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel3);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
ClockingIn = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_CLOCKINGIN
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","ClockingInController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
ClockingIn.addView(viewPage0);

return (UMWindow)ClockingIn;
}

	
	public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeClockingIn()",UMActivity.getViewId(control),args);
}
public void actionButton2_onclick(View control, UMEventArgs args) {
    String actionid = "button2_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.clockingIn()",UMActivity.getViewId(control),args);
}
public void actionButton1_onclick(View control, UMEventArgs args) {
    String actionid = "button1_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.clockingIn()",UMActivity.getViewId(control),args);
}
public void actionListviewdefine0_onload(View control, UMEventArgs args) {
    String actionid = "listviewdefine0_onload";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.clockingInLoad()",UMActivity.getViewId(control),args);
}


}
