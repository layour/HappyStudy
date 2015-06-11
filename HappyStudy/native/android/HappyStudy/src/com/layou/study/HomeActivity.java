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

public abstract class HomeActivity extends UMWindowActivity {

	protected UMWindow Home = null;
protected XVerticalLayout viewPage0 = null;
protected XHorizontalLayout navigatorbar0 = null;
protected UMLabel label0 = null;
protected UMButton button1 = null;
protected XVerticalLayout panel0 = null;
protected UMImageFlipper imageflipper0 = null;
protected UMImageFlipperItem imageflipper0_0 = null;
protected UMImageFlipperItem imageflipper0_1 = null;
protected UMImageFlipperItem imageflipper0_2 = null;
protected XHorizontalLayout panel2 = null;
protected XVerticalLayout panel4 = null;
protected UMImageButton imagebutton0 = null;
protected XVerticalLayout panel5 = null;
protected UMImageButton imagebutton1 = null;
protected UMImageButton imagebutton2 = null;
protected XHorizontalLayout panel3 = null;
protected XHorizontalLayout panel9 = null;
protected UMImageButton imagebutton3 = null;
protected UMImageButton imagebutton4 = null;
protected XVerticalLayout panel8 = null;
protected UMImageButton imagebutton5 = null;
protected XHorizontalLayout toolbar0 = null;
protected UMImageButton imagebutton6 = null;
protected UMImageButton imagebutton7 = null;
protected UMImageButton imagebutton8 = null;
protected UMImageButton imagebutton9 = null;

	
	protected final static int ID_HOME = 1836031683;
protected final static int ID_VIEWPAGE0 = 1206071467;
protected final static int ID_NAVIGATORBAR0 = 116061050;
protected final static int ID_LABEL0 = 595811774;
protected final static int ID_BUTTON1 = 97089217;
protected final static int ID_PANEL0 = 989571029;
protected final static int ID_IMAGEFLIPPER0 = 1099575117;
protected final static int ID_IMAGEFLIPPER0_0 = 1779580966;
protected final static int ID_IMAGEFLIPPER0_1 = 158758036;
protected final static int ID_IMAGEFLIPPER0_2 = 727993657;
protected final static int ID_PANEL2 = 1286321173;
protected final static int ID_PANEL4 = 698686948;
protected final static int ID_IMAGEBUTTON0 = 264885547;
protected final static int ID_PANEL5 = 382218296;
protected final static int ID_IMAGEBUTTON1 = 2040608664;
protected final static int ID_IMAGEBUTTON2 = 4800207;
protected final static int ID_PANEL3 = 627652065;
protected final static int ID_PANEL9 = 1722213745;
protected final static int ID_IMAGEBUTTON3 = 1734822406;
protected final static int ID_IMAGEBUTTON4 = 1046779749;
protected final static int ID_PANEL8 = 1910988274;
protected final static int ID_IMAGEBUTTON5 = 94078848;
protected final static int ID_TOOLBAR0 = 343291186;
protected final static int ID_IMAGEBUTTON6 = 30081990;
protected final static int ID_IMAGEBUTTON7 = 274593;
protected final static int ID_IMAGEBUTTON8 = 2058993889;
protected final static int ID_IMAGEBUTTON9 = 177080958;

	
	
	@Override
	public String getControllerName() {
		return "HomeController";
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
		  idmap.put("Home",ID_HOME);
  idmap.put("viewPage0",ID_VIEWPAGE0);
  idmap.put("navigatorbar0",ID_NAVIGATORBAR0);
  idmap.put("label0",ID_LABEL0);
  idmap.put("button1",ID_BUTTON1);
  idmap.put("panel0",ID_PANEL0);
  idmap.put("imageflipper0",ID_IMAGEFLIPPER0);
  idmap.put("imageflipper0_0",ID_IMAGEFLIPPER0_0);
  idmap.put("imageflipper0_1",ID_IMAGEFLIPPER0_1);
  idmap.put("imageflipper0_2",ID_IMAGEFLIPPER0_2);
  idmap.put("panel2",ID_PANEL2);
  idmap.put("panel4",ID_PANEL4);
  idmap.put("imagebutton0",ID_IMAGEBUTTON0);
  idmap.put("panel5",ID_PANEL5);
  idmap.put("imagebutton1",ID_IMAGEBUTTON1);
  idmap.put("imagebutton2",ID_IMAGEBUTTON2);
  idmap.put("panel3",ID_PANEL3);
  idmap.put("panel9",ID_PANEL9);
  idmap.put("imagebutton3",ID_IMAGEBUTTON3);
  idmap.put("imagebutton4",ID_IMAGEBUTTON4);
  idmap.put("panel8",ID_PANEL8);
  idmap.put("imagebutton5",ID_IMAGEBUTTON5);
  idmap.put("toolbar0",ID_TOOLBAR0);
  idmap.put("imagebutton6",ID_IMAGEBUTTON6);
  idmap.put("imagebutton7",ID_IMAGEBUTTON7);
  idmap.put("imagebutton8",ID_IMAGEBUTTON8);
  idmap.put("imagebutton9",ID_IMAGEBUTTON9);

	}
	
	public void onLoad() {
		ULog.logLC("onLoad", this);
		if(currentPage!=null) {
			currentPage.onLoad();
		}
	
		{ //viewPage0 - action:viewpage0_onload
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionViewpage0_onload(viewPage0,args);

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
,"title","快乐学"
,"height","44"
,"color","#ffffff"
,"layout-type","linear"
,"font-size","17"
,"background","#00a1ea"
,"font-family","default"
,"valign","center"
);
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
,"halign","center"
,"height","44"
,"color","#ffffff"
,"layout-type","linear"
,"font-size","18"
,"width","44"
,"onclick","action:button1_onclick"
,"font-family","default"
,"valign","center"
,"background-image","icon_edit.png"
);
button1.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionButton1_onclick(button1,args);

}
});
navigatorbar0.addView(button1);

return navigatorbar0;
}
public View getImageflipper0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
imageflipper0 = (UMImageFlipper)ThirdControl.createControl(new UMImageFlipper(context),ID_IMAGEFLIPPER0
,"titleheight","20"
,"height","120"
,"descheight","0"
,"interval","2000"
,"flipperbtnvisible","false"
,"layout-type","linear"
,"width","fill"
,"scaletype","fitxy"
,"isloop","true"
,"autoflip","true"
);
imageflipper0_0 = (UMImageFlipperItem)ThirdControl.createControl(new UMImageFlipperItem(context),ID_IMAGEFLIPPER0_0
,"title"," 高山流水"
,"description",""
,"layout-type","linear"
,"src","bz1.png"
);
imageflipper0.addView(imageflipper0_0);
imageflipper0_1 = (UMImageFlipperItem)ThirdControl.createControl(new UMImageFlipperItem(context),ID_IMAGEFLIPPER0_1
,"title","人间仙境"
,"description",""
,"layout-type","linear"
,"src","bz2.png"
);
imageflipper0.addView(imageflipper0_1);
imageflipper0_2 = (UMImageFlipperItem)ThirdControl.createControl(new UMImageFlipperItem(context),ID_IMAGEFLIPPER0_2
,"title","明媚阳光"
,"description",""
,"layout-type","linear"
,"src","bz3.png"
);
imageflipper0.addView(imageflipper0_2);

return imageflipper0;
}
public View getPanel4View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel4 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL4
,"margin-right","2.5"
,"halign","center"
,"height","fill"
,"weight","2"
,"layout-type","linear"
,"width","0"
,"valign","CENTER"
);
imagebutton0 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON0
,"border-bottom-width","1"
,"font-pressed-color","#ffffff"
,"height","fill"
,"border-right-color","#FC6857"
,"font-size","18"
,"icon-background-image","exam.png"
,"value","模拟考试"
,"border-right-width","1"
,"border-left-width","1"
,"halign","center"
,"border-radius","10"
,"width","fill"
,"icon-width","66"
,"istogglebutton","false"
,"border-bottom-color","#FC6857"
,"border-top-width","1"
,"border-left-color","#FC6857"
,"border-top-color","#FC6857"
,"icon-height","66"
,"color","#ffffff"
,"layout-type","linear"
,"background","#FC6857"
,"onclick","action:imagebutton0_onclick"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton0.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton0_onclick(imagebutton0,args);

}
});
panel4.addView(imagebutton0);

return panel4;
}
public View getPanel5View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel5 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL5
,"halign","center"
,"height","fill"
,"weight","1"
,"layout-type","linear"
,"width","0"
,"margin-left","2.5"
,"valign","CENTER"
);
imagebutton1 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON1
,"border-bottom-width","1"
,"weight","1"
,"font-pressed-color","#ffffff"
,"height","0"
,"border-right-color","#2FB13A"
,"font-size","14"
,"icon-background-image","myerror.png"
,"border-right-width","1"
,"value","我的错题"
,"border-left-width","1"
,"halign","center"
,"border-radius","10"
,"width","fill"
,"icon-width","33"
,"istogglebutton","false"
,"margin-bottom","2.5"
,"border-bottom-color","#2FB13A"
,"border-top-width","1"
,"border-top-color","#2FB13A"
,"icon-height","33"
,"border-left-color","#2FB13A"
,"color","#ffffff"
,"layout-type","linear"
,"background","#2FB13A"
,"onclick","action:imagebutton1_onclick"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton1.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton1_onclick(imagebutton1,args);

}
});
panel5.addView(imagebutton1);
imagebutton2 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON2
,"border-bottom-width","1"
,"weight","1"
,"font-pressed-color","#ffffff"
,"height","0"
,"border-right-color","#687CF7"
,"font-size","14"
,"icon-background-image","network.png"
,"border-right-width","1"
,"value","网络错题"
,"border-left-width","1"
,"halign","center"
,"border-radius","10"
,"width","fill"
,"icon-width","33"
,"istogglebutton","false"
,"border-bottom-color","#687CF7"
,"border-top-width","1"
,"border-top-color","#687CF7"
,"icon-height","33"
,"border-left-color","#687CF7"
,"color","#ffffff"
,"layout-type","linear"
,"background","#687CF7"
,"onclick","action:imagebutton2_onclick"
,"font-family","default"
,"margin-top","2.5"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton2.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton2_onclick(imagebutton2,args);

}
});
panel5.addView(imagebutton2);

return panel5;
}
public View getPanel2View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel2 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL2
,"margin-right","5"
,"halign","LEFT"
,"height","0"
,"weight","2"
,"layout-type","linear"
,"width","fill"
,"margin-left","5"
,"margin-bottom","5"
,"margin-top","5"
,"valign","center"
);
View panel4 = (View) getPanel4View((UMActivity)context,binderGroup,configure);
panel2.addView(panel4);
View panel5 = (View) getPanel5View((UMActivity)context,binderGroup,configure);
panel2.addView(panel5);

return panel2;
}
public View getPanel9View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel9 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL9
,"margin-right","2.5"
,"halign","LEFT"
,"height","fill"
,"weight","2"
,"layout-type","linear"
,"width","0"
,"valign","center"
);
imagebutton3 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON3
,"border-bottom-width","1"
,"weight","1"
,"font-pressed-color","#ffffff"
,"margin-right","2.5"
,"height","fill"
,"border-right-color","#9C64E4"
,"font-size","14"
,"icon-background-image","chapter.png"
,"border-right-width","1"
,"value","章节练习"
,"border-left-width","1"
,"halign","center"
,"border-radius","10"
,"width","0"
,"icon-width","33"
,"istogglebutton","false"
,"border-bottom-color","#9C64E4"
,"border-top-width","1"
,"border-left-color","#9C64E4"
,"border-top-color","#9C64E4"
,"icon-height","33"
,"color","#ffffff"
,"layout-type","linear"
,"background","#9C64E4"
,"onclick","action:imagebutton3_onclick"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton3.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton3_onclick(imagebutton3,args);

}
});
panel9.addView(imagebutton3);
imagebutton4 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON4
,"border-bottom-width","1"
,"weight","1"
,"font-pressed-color","#ffffff"
,"height","fill"
,"border-right-color","#16CFB2"
,"font-size","14"
,"icon-background-image","random.png"
,"border-right-width","1"
,"value","随机练习"
,"border-left-width","1"
,"halign","center"
,"border-radius","10"
,"width","0"
,"icon-width","33"
,"istogglebutton","false"
,"border-bottom-color","#16CFB2"
,"border-top-width","1"
,"border-top-color","#16CFB2"
,"icon-height","33"
,"border-left-color","#16CFB2"
,"color","#ffffff"
,"layout-type","linear"
,"background","#16CFB2"
,"margin-left","2.5"
,"onclick","action:imagebutton4_onclick"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton4.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton4_onclick(imagebutton4,args);

}
});
panel9.addView(imagebutton4);

return panel9;
}
public View getPanel8View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel8 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_PANEL8
,"halign","center"
,"height","fill"
,"weight","1"
,"layout-type","linear"
,"width","0"
,"margin-left","2.5"
,"valign","CENTER"
);
imagebutton5 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON5
,"border-bottom-width","1"
,"font-pressed-color","#ffffff"
,"height","fill"
,"border-right-color","#FA5DBA"
,"font-size","14"
,"icon-background-image","collect.png"
,"value","我的收藏"
,"border-right-width","1"
,"border-left-width","1"
,"halign","center"
,"border-radius","10"
,"width","fill"
,"icon-width","33"
,"istogglebutton","false"
,"border-bottom-color","#FA5DBA"
,"border-top-width","1"
,"border-left-color","#FA5DBA"
,"border-top-color","#FA5DBA"
,"icon-height","33"
,"color","#ffffff"
,"layout-type","linear"
,"background","#FA5DBA"
,"onclick","action:imagebutton5_onclick"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton5.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton5_onclick(imagebutton5,args);

}
});
panel8.addView(imagebutton5);

return panel8;
}
public View getPanel3View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
panel3 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_PANEL3
,"margin-right","5"
,"halign","CENTER"
,"height","0"
,"weight","1"
,"layout-type","linear"
,"width","fill"
,"margin-left","5"
,"margin-bottom","5"
,"valign","center"
);
View panel9 = (View) getPanel9View((UMActivity)context,binderGroup,configure);
panel3.addView(panel9);
View panel8 = (View) getPanel8View((UMActivity)context,binderGroup,configure);
panel3.addView(panel8);

return panel3;
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
View imageflipper0 = (View) getImageflipper0View((UMActivity)context,binderGroup,configure);
panel0.addView(imageflipper0);
View panel2 = (View) getPanel2View((UMActivity)context,binderGroup,configure);
panel0.addView(panel2);
View panel3 = (View) getPanel3View((UMActivity)context,binderGroup,configure);
panel0.addView(panel3);

return panel0;
}
public View getToolbar0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
toolbar0 = (XHorizontalLayout)ThirdControl.createControl(new XHorizontalLayout(context),ID_TOOLBAR0
,"halign","CENTER"
,"height","49"
,"layout-type","linear"
,"width","fill"
,"valign","top"
,"background-image","tabbar"
);
imagebutton6 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON6
,"halign","center"
,"weight","1"
,"width","0"
,"icon-width","25"
,"istogglebutton","false"
,"font-pressed-color","#00a1ea"
,"imagebuttontype","icontext"
,"icon-height","25"
,"height","fill"
,"color","#919191"
,"layout-type","linear"
,"font-size","12"
,"icon-background-image","tab_subscription"
,"value","考试"
,"icon-pressed-image","tab_subscription_touch"
,"font-family","default"
,"valign","center"
,"checked","true"
,"icon-text-spacing","3"
);
toolbar0.addView(imagebutton6);
imagebutton7 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON7
,"halign","center"
,"weight","1"
,"width","0"
,"icon-width","25"
,"istogglebutton","false"
,"font-pressed-color","#00a1ea"
,"imagebuttontype","icontext"
,"icon-height","25"
,"height","fill"
,"color","#919191"
,"layout-type","linear"
,"font-size","12"
,"icon-background-image","tab_edit"
,"value","签到"
,"icon-pressed-image","tab_edit_touch"
,"onclick","action:imagebutton7_onclick"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton7.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton7_onclick(imagebutton7,args);

}
});
toolbar0.addView(imagebutton7);
imagebutton8 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON8
,"halign","center"
,"weight","1"
,"width","0"
,"icon-width","25"
,"istogglebutton","false"
,"font-pressed-color","#00a1ea"
,"imagebuttontype","icontext"
,"icon-height","25"
,"height","fill"
,"color","#919191"
,"layout-type","linear"
,"font-size","12"
,"icon-background-image","tab_chart"
,"value","统计"
,"icon-pressed-image","tab_chart_touch"
,"onclick","action:imagebutton8_onclick"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton8.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton8_onclick(imagebutton8,args);

}
});
toolbar0.addView(imagebutton8);
imagebutton9 = (UMImageButton)ThirdControl.createControl(new UMImageButton(context),ID_IMAGEBUTTON9
,"halign","center"
,"weight","1"
,"width","0"
,"icon-width","25"
,"istogglebutton","false"
,"font-pressed-color","#00a1ea"
,"imagebuttontype","icontext"
,"icon-height","25"
,"height","fill"
,"color","#919191"
,"layout-type","linear"
,"font-size","12"
,"icon-background-image","tab_contact"
,"value","关于我"
,"icon-pressed-image","tab_contact_touch"
,"onclick","action:imagebutton9_onclick"
,"font-family","default"
,"valign","center"
,"checked","false"
,"icon-text-spacing","3"
);
imagebutton9.setOnClickListener(new View.OnClickListener() {
  @Override
  public void onClick(View v) {
    UMEventArgs args = new UMEventArgs(HomeActivity.this);
    actionImagebutton9_onclick(imagebutton9,args);

}
});
toolbar0.addView(imagebutton9);

return toolbar0;
}
public View getViewPage0View(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
viewPage0 = (XVerticalLayout)ThirdControl.createControl(new XVerticalLayout(context),ID_VIEWPAGE0
,"halign","center"
,"height","fill"
,"onload","action:viewpage0_onload"
,"layout-type","vbox"
,"background","#ffffff"
,"width","fill"
,"valign","TOP"
);
View navigatorbar0 = (View) getNavigatorbar0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(navigatorbar0);
View panel0 = (View) getPanel0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(panel0);
View toolbar0 = (View) getToolbar0View((UMActivity)context,binderGroup,configure);
viewPage0.addView(toolbar0);

return viewPage0;
}
public UMWindow getCurrentWindow(final UMActivity context,IBinderGroup binderGroup, UMDslConfigure configure) {
Home = (UMWindow)ThirdControl.createControl(new UMWindow(context),ID_HOME
,"halign","center"
,"height","fill"
,"layout","vbox"
,"width","fill"
,"controller","HomeController"
,"valign","TOP"
,"namespace","com.layou.study"
);
View viewPage0 = (View) getViewPage0View((UMActivity)context,binderGroup,configure);
Home.addView(viewPage0);

return (UMWindow)Home;
}

	
	public void actionImagebutton5_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton5_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.enterChapterCollect()",UMActivity.getViewId(control),args);
}
public void actionImagebutton9_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton9_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.openAbout()",UMActivity.getViewId(control),args);
}
public void actionImagebutton7_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton7_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.openClockingIn()",UMActivity.getViewId(control),args);
}
public void actionImagebutton4_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton4_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.enterExerciseTopic()",UMActivity.getViewId(control),args);
}
public void actionImagebutton8_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton8_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.openStatistics()",UMActivity.getViewId(control),args);
}
public void actionButton1_onclick(View control, UMEventArgs args) {
    String actionid = "button1_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.clockingIn()",UMActivity.getViewId(control),args);
}
public void actionImagebutton0_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton0_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.enterExamSelect()",UMActivity.getViewId(control),args);
}
public void actionImagebutton3_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton3_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.enterChapterExercise()",UMActivity.getViewId(control),args);
}
public void actionImagebutton2_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton2_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.enterChapterCollect()",UMActivity.getViewId(control),args);
}
public void actionImagebutton1_onclick(View control, UMEventArgs args) {
    String actionid = "imagebutton1_onclick";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.enterChapterCollect()",UMActivity.getViewId(control),args);
}
public void actionViewpage0_onload(View control, UMEventArgs args) {
    String actionid = "viewpage0_onload";
    args.put("language","javascript");
    args.put("containerName","");
  ActionProcessor.exec(this, actionid, args);
  this.getContainer().exec(actionid, "this.addBackEvent()",UMActivity.getViewId(control),args);
}


}
