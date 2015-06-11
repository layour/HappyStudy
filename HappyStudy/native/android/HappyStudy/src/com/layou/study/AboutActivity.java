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

public abstract class AboutActivity extends UMWindowActivity {

	protected UMWindow About = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMButton button0 = null;
protected UMLabel label0 = null;
protected XVerticalLayout panel0 = null;
protected UMImageButton imagebutton0 = null;
protected UMLabel label4 = null;
protected UMLabel label5 = null;
protected XHorizontalLayout panel1 = null;
protected UMImage image0 = null;
protected UMLabel label1 = null;
protected UMImage image3 = null;
protected XHorizontalLayout panel2 = null;
protected UMImage image1 = null;
protected UMLabel label2 = null;
protected UMImage image4 = null;
protected XHorizontalLayout panel3 = null;
protected UMImage image2 = null;
protected UMLabel label3 = null;
protected UMImage image5 = null;

	
	protected final static int ID_ABOUT = 740613475;
protected final static int ID_VIEWPAGE0 = 269455405;
protected final static int ID_NAVIGATORBAR0 = 1306541906;
protected final static int ID_BUTTON0 = 1672856576;
protected final static int ID_LABEL0 = 153846418;
protected final static int ID_PANEL0 = 236854125;
protected final static int ID_IMAGEBUTTON0 = 1165091323;
protected final static int ID_LABEL4 = 86554804;
protected final static int ID_LABEL5 = 281008333;
protected final static int ID_PANEL1 = 655861260;
protected final static int ID_IMAGE0 = 1478520345;
protected final static int ID_LABEL1 = 1355424369;
protected final static int ID_IMAGE3 = 547621223;
protected final static int ID_PANEL2 = 942570138;
protected final static int ID_IMAGE1 = 1256188499;
protected final static int ID_LABEL2 = 1793750995;
protected final static int ID_IMAGE4 = 1555854887;
protected final static int ID_PANEL3 = 901080472;
protected final static int ID_IMAGE2 = 1873913298;
protected final static int ID_LABEL3 = 1477278483;
protected final static int ID_IMAGE5 = 1728946410;

	
	
	@Override
	public String getControllerName() {
		return "AboutController";
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
		  idmap.put("About",ID_ABOUT);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("button0",ID_BUTTON0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("imagebutton0",ID_IMAGEBUTTON0);
  idmap.put("label4",ID_LABEL4);
  idmap.put("label5",ID_LABEL5);
  idmap.put("panel1",ID_PANEL1);
  idmap.put("image0",ID_IMAGE0);
  idmap.put("label1",ID_LABEL1);
  idmap.put("image3",ID_IMAGE3);
  idmap.put("panel2",ID_PANEL2);
  idmap.put("image1",ID_IMAGE1);
  idmap.put("label2",ID_LABEL2);
  idmap.put("image4",ID_IMAGE4);
  idmap.put("panel3",ID_PANEL3);
  idmap.put("image2",ID_IMAGE2);
  idmap.put("label3",ID_LABEL3);
  idmap.put("image5",ID_IMAGE5);

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
,"title","关于我"
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
    UMEventArgs args = new UMEventArgs(AboutActivity.this);
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
,"height","180"
,"layout-type","linear"
,"background","#00a1ea"
,"width","fill"
,"valign","CENTER"
);
imagebutton0 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON0
,"halign","center"
,"width","88"
,"icon-width","88"
,"margin-bottom","5"
,"istogglebutton","false"
,"font-pressed-color","#00a1ea"
,"imagebuttontype","icon"
,"icon-height","88"
,"height","88"
,"color","#919191"
,"layout-type","linear"
,"font-size","10"
,"icon-background-image","head.png"
,"value","图标名称"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
panel0.addView(imagebutton0);
label4 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL4
,"content","张三"
,"halign","center"
,"height","wrap"
,"widthwrap","30.0"
,"color","#FFFFFF"
,"heightwrap","19.0"
,"layout-type","linear"
,"font-size","14"
,"width","wrap"
,"font-family","default"
,"valign","center"
);
panel0.addView(label4);
label5 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL5
,"halign","center"
,"widthwrap","98.0"
,"width","wrap"
,"content","岗前班-201512"
,"height","wrap"
,"color","#FFFFFF"
,"heightwrap","19.0"
,"font-size","14"
,"layout-type","linear"
,"font-family","default"
,"margin-top","5"
,"valign","center"
);
panel0.addView(label5);

return panel0;
}
public View getPanel1View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel1 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL1
,"padding-left","10"
,"padding-right","10"
,"halign","LEFT"
,"height","60"
,"layout-type","linear"
,"width","fill"
,"onclick","action:panel1_onclick"
,"valign","center"
,"background-image","textboxbg.png"
);
panel1.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(AboutActivity.this);
    actionPanel1_onclick(panel1,args);

}
});
image0 = (UMImage)ThirdControl.createControl(new UMImage(context),ID_IMAGE0
,"height","36"
,"layout-type","linear"
,"width","36"
,"scaletype","fitcenter"
,"src","opinion.png"
);
panel1.addView(image0);
label1 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL1
,"content","意见反馈"
,"halign","left"
,"height","fill"
,"weight","1"
,"color","#000000"
,"layout-type","linear"
,"font-size","14"
,"width","0"
,"margin-left","5"
,"font-family","default"
,"valign","center"
);
panel1.addView(label1);
image3 = (UMImage)ThirdControl.createControl(new UMImage(context),ID_IMAGE3
,"height","44"
,"layout-type","linear"
,"width","44"
,"scaletype","fitcenter"
,"src","icon_enter.png"
);
panel1.addView(image3);

return panel1;
}
public View getPanel2View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel2 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL2
,"padding-right","10"
,"padding-left","10"
,"halign","LEFT"
,"height","60"
,"layout-type","linear"
,"width","fill"
,"onclick","action:panel2_onclick"
,"valign","center"
,"background-image","textboxbg.png"
);
panel2.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(AboutActivity.this);
    actionPanel2_onclick(panel2,args);

}
});
image1 = (UMImage)ThirdControl.createControl(new UMImage(context),ID_IMAGE1
,"height","36"
,"layout-type","linear"
,"width","36"
,"scaletype","fitcenter"
,"src","about.png"
);
panel2.addView(image1);
label2 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL2
,"content","系统帮助"
,"halign","left"
,"height","fill"
,"weight","1"
,"color","#000000"
,"layout-type","linear"
,"font-size","14"
,"width","0"
,"margin-left","5"
,"font-family","default"
,"valign","center"
);
panel2.addView(label2);
image4 = (UMImage)ThirdControl.createControl(new UMImage(context),ID_IMAGE4
,"height","44"
,"layout-type","linear"
,"width","44"
,"scaletype","fitcenter"
,"src","icon_enter.png"
);
panel2.addView(image4);

return panel2;
}
public View getPanel3View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel3 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL3
,"padding-right","10"
,"padding-left","10"
,"halign","LEFT"
,"height","60"
,"layout-type","linear"
,"width","fill"
,"onclick","action:panel3_onclick"
,"valign","center"
,"background-image","textboxbg.png"
);
panel3.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(AboutActivity.this);
    actionPanel3_onclick(panel3,args);

}
});
image2 = (UMImage)ThirdControl.createControl(new UMImage(context),ID_IMAGE2
,"height","36"
,"layout-type","linear"
,"width","36"
,"scaletype","fitcenter"
,"src","help.png"
);
panel3.addView(image2);
label3 = (UMLabel)ThirdControl.createControl(new UMLabel(context),ID_LABEL3
,"content","关于系统"
,"halign","left"
,"height","fill"
,"weight","1"
,"color","#000000"
,"layout-type","linear"
,"font-size","14"
,"width","0"
,"margin-left","5"
,"font-family","default"
,"valign","center"
);
panel3.addView(label3);
image5 = (UMImage)ThirdControl.createControl(new UMImage(context),ID_IMAGE5
,"height","44"
,"layout-type","linear"
,"width","44"
,"scaletype","fitcenter"
,"src","icon_enter.png"
);
panel3.addView(image5);

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
View panel0 = (View) getPanel0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel0);
View panel1 = (View) getPanel1View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel1);
View panel2 = (View) getPanel2View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel2);
View panel3 = (View) getPanel3View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel3);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
About = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_ABOUT
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","AboutController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
About.addView(viewPage0);

return (UMWindow)About;
}

	
	public void actionPanel1_onclick(View control, UMEventArgs args) {
    String actionid = "panel1_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.enterOpinionTickling()",UMActivity.getViewId(control),args);
}
public void actionButton0_onclick(View control, UMEventArgs args) {
    String actionid = "button0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.closeAbout()",UMActivity.getViewId(control),args);
}
public void actionPanel3_onclick(View control, UMEventArgs args) {
    String actionid = "panel3_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.openAboutSystem()",UMActivity.getViewId(control),args);
}
public void actionPanel2_onclick(View control, UMEventArgs args) {
    String actionid = "panel2_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.openSystemHelp()",UMActivity.getViewId(control),args);
}


}
