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

public abstract class StatisticsActivity extends UMWindowActivity {

	protected UMWindow Statistics = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected XVerticalLayout panel3 = null;
protected UMLabel label8 = null;
protected UMLabel label1 = null;
protected UMListViewBase listviewdefine0 = null;
protected XVerticalLayout panel0 = null;
protected XHorizontalLayout panel1 = null;
protected UMLabel label2 = null;
protected UMLabel label3 = null;
protected UMLabel label4 = null;
protected UMLabel label5 = null;
protected UMLabel label6 = null;
protected UMLabel label7 = null;
protected XHorizontalLayout panel2 = null;

	
	protected final static int ID_STATISTICS = 569897454;
protected final static int ID_VIEWPAGE0 = 835204498;
protected final static int ID_NAVIGATORBAR0 = 1678233605;
protected final static int ID_BUTTON0 = 612633956;
protected final static int ID_LABEL0 = 464072726;
protected final static int ID_PANEL3 = 1904028189;
protected final static int ID_LABEL8 = 1373392256;
protected final static int ID_LABEL1 = 1101212674;
protected final static int ID_LISTVIEWDEFINE0 = 225449082;
protected final static int ID_PANEL0 = 924876379;
protected final static int ID_PANEL1 = 491565054;
protected final static int ID_LABEL2 = 776902074;
protected final static int ID_LABEL3 = 613154655;
protected final static int ID_LABEL4 = 1060368982;
protected final static int ID_LABEL5 = 110221700;
protected final static int ID_LABEL6 = 1839161754;
protected final static int ID_LABEL7 = 230261275;
protected final static int ID_PANEL2 = 711201772;

	
	
	@Override
	public String getControllerName() {
		return "StatisticsController";
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
		  idmap.put("Statistics",ID_STATISTICS);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("panel3",ID_PANEL3);
  idmap.put("label8",ID_LABEL8);
  idmap.put("label1",ID_LABEL1);
  idmap.put("listviewdefine0",ID_LISTVIEWDEFINE0);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("panel1",ID_PANEL1);
  idmap.put("label2",ID_LABEL2);
  idmap.put("label3",ID_LABEL3);
  idmap.put("label4",ID_LABEL4);
  idmap.put("label5",ID_LABEL5);
  idmap.put("label6",ID_LABEL6);
  idmap.put("label7",ID_LABEL7);
  idmap.put("panel2",ID_PANEL2);

	}
	
	public void onLoad() {
		ULog.logLC("onLoad", this);
		if(currentPage!=null) {
			currentPage.onLoad();
		}
	
		{ //listviewdefine0 - action:listviewdefine0_onload
    UMEventArgs args = new UMEventArgs(StatisticsActivity.this);
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
,"title","统计"
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
    UMEventArgs args = new UMEventArgs(StatisticsActivity.this);
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
public View getPanel3View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel3 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL3
,"border-bottom-width","5"
,"halign","center"
,"border-radius","75"
,"width","150"
,"margin-bottom","10"
,"border-bottom-color","#16CFB2"
,"border-top-width","5"
,"border-left-color","#16CFB2"
,"border-top-color","#16CFB2"
,"height","150"
,"border-right-color","#16CFB2"
,"layout-type","linear"
,"border-right-width","5"
,"margin-top","10"
,"valign","CENTER"
,"border-left-width","5"
);
label8 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL8
,"halign","center"
,"widthwrap","123.0"
,"width","wrap"
,"font-weight","bold"
,"content","100%"
,"height","wrap"
,"color","#000000"
,"heightwrap","62.0"
,"font-size","48"
,"layout-type","linear"
,"font-family","default"
,"valign","center"
);
panel3.addView(label8);
label1 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL1
,"content","准确率"
,"halign","center"
,"height","wrap"
,"widthwrap","45.0"
,"color","#000000"
,"heightwrap","19.0"
,"layout-type","linear"
,"font-size","14"
,"width","wrap"
,"font-family","default"
,"valign","center"
);
panel3.addView(label1);

return panel3;
}
public View getPanel1View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel1 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL1
,"padding-left","20"
,"padding-right","20"
,"halign","LEFT"
,"height","0"
,"weight","1"
,"layout-type","linear"
,"background","#FFFFFF"
,"width","fill"
,"valign","center"
);
label2 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL2
,"margin-right","10"
,"halign","center"
,"height","25"
,"color","#000000"
,"layout-type","linear"
,"font-size","14"
,"background","#008040"
,"width","25"
,"font-family","default"
,"valign","center"
);
panel1.addView(label2);
label3 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL3
,"bindfield","key"
,"halign","center"
,"widthwrap","30.0"
,"width","wrap"
,"content","做对"
,"height","wrap"
,"color","#000000"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"font-family","default"
,"valign","center"
);
UMTextBinder label3_binder = new UMTextBinder((IUMContextAccessor)context);
label3_binder.setBindInfo(new BindInfo("key"));
label3_binder.setControl(label3);
binderGroup.addBinderToGroup(ID_LABEL3, label3_binder);
panel1.addView(label3);
label4 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL4
,"bindfield","value"
,"halign","left"
,"weight","1"
,"width","0"
,"content","0"
,"height","wrap"
,"color","#000000"
,"heightwrap","20.0"
,"font-size","14"
,"layout-type","linear"
,"margin-left","5"
,"font-family","default"
,"valign","center"
);
UMTextBinder label4_binder = new UMTextBinder((IUMContextAccessor)context);
label4_binder.setBindInfo(new BindInfo("value"));
label4_binder.setControl(label4);
binderGroup.addBinderToGroup(ID_LABEL4, label4_binder);
panel1.addView(label4);
label5 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL5
,"content","占"
,"halign","center"
,"height","wrap"
,"widthwrap","15.0"
,"color","#000000"
,"heightwrap","19.0"
,"layout-type","linear"
,"font-size","14"
,"width","wrap"
,"font-family","default"
,"valign","center"
);
panel1.addView(label5);
label6 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL6
,"bindfield","percent"
,"halign","center"
,"widthwrap","8.0"
,"width","wrap"
,"content","0"
,"margin-right","5"
,"height","wrap"
,"color","#000000"
,"heightwrap","19.0"
,"layout-type","linear"
,"font-size","14"
,"margin-left","5"
,"font-family","default"
,"valign","center"
);
UMTextBinder label6_binder = new UMTextBinder((IUMContextAccessor)context);
label6_binder.setBindInfo(new BindInfo("percent"));
label6_binder.setControl(label6);
binderGroup.addBinderToGroup(ID_LABEL6, label6_binder);
panel1.addView(label6);
label7 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL7
,"content","%"
,"halign","center"
,"height","wrap"
,"widthwrap","10.0"
,"color","#000000"
,"heightwrap","20.0"
,"layout-type","linear"
,"font-size","14"
,"width","wrap"
,"font-family","default"
,"valign","center"
);
panel1.addView(label7);

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
View panel3 = (View) getPanel3View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel3);
View listviewdefine0 = (View) getListviewdefine0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(listviewdefine0);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
Statistics = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_STATISTICS
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","StatisticsController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
Statistics.addView(viewPage0);

return (UMWindow)Statistics;
}

	
	public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeStaistics()",UMActivity.getViewId(control),args);
}
public void actionListviewdefine0_onload(View control, UMEventArgs args) {
    String actionid = "listviewdefine0_onload";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.listDetailLoad()",UMActivity.getViewId(control),args);
}


}
