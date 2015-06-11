//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "registerController.h"

















@interface registerController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation registerController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize Register = _Register;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize wloginpanel = _wloginpanel;





@synthesize panel0 = _panel0;









static NSString *controllerC = @"RegisterController";

static NSString *namespaceC = @"com.layou.study";

static NSString *ModelName = @"";


- (id)initWithParentCtl:(UIViewController*)parentCtl
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        if(parentCtl){
            self.parentController = parentCtl;
        }else{
            self.parentController = self;
        }
        _navBarHidden = YES;
        self.navigationItem.hidesBackButton = YES;
        _viewObject = [[UMLayoutView alloc] init];
        _Register = _viewObject;

            _viewObject.layoutType = Layout_vbox;

    _viewObject.weightUMPView = 0;
    _viewObject.paddingLeft = 0;
    _viewObject.paddingTop = 0;
    _viewObject.paddingRight = 0;
    _viewObject.paddingBottom = 0;
    _viewObject.marginLeft = 0;
    _viewObject.marginTop = 0;
    _viewObject.marginRight = 0;
    _viewObject.marginBottom = 0;//0;
    _viewObject.vAlignUMP = ALIGN_TOP;
    _viewObject.hAlignUMP = ALIGN_CENTER;
    _viewObject.frame = CGRectMake(0, 0, [[UIScreen mainScreen] applicationFrame].size.width, [[UIScreen mainScreen] applicationFrame].size.height);
    _viewObject.bVisible = YES;
    _viewObject.disabled = NO;
    _viewObject.readOnly = NO;
    //_viewObject.isHeightFill = NO;
    //_viewObject.isWidthFill = YES;
    _viewObject.isHeightWrap = NO;
    _viewObject.isWidthWrap = NO;
       _viewObject.backgroundColor = [UIColor clearColor];

	   _viewObject.layoutType = Layout_vbox;


        _context = [[UMEntityContext alloc]init];
        _ctx = _context;
  		self.xnamespace = namespaceC;
        self.controllerid = controllerC;

         
    }
	return self;
}

#pragma mark  initview

- (void)initChilds
{
    _viewPage0 = [[UMLayoutView alloc] init];
    _viewPage0.controlId = @"viewPage0";
    _viewPage0.layoutType = Layout_vbox;
    [(UMLayoutView*)_Register addSubUMView:_viewPage0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_viewPage0 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_TOP",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:0.9607843 green:0.9607843 blue:0.9607843 alpha:1],@"backgroundColor",
                          @"",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil]];




    _navigatorbar0 = [[UMLayoutView alloc] init];
    _navigatorbar0.controlId = @"navigatorbar0";
    _navigatorbar0.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_navigatorbar0 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"8",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_LEFT",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"44",@"height",
                          @"#ffffff",@"color",
                          [UIColor colorWithRed:0.0 green:0.6313726 blue:0.91764706 alpha:1],@"backgroundColor",
                          @"",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil]];



    _navigatorbar0.naviTitle = [UMParser parseExpr:nil expr:@"基本信息" ctx:_ctx];;
    [(UMLayoutView*)_viewPage0 addSubUMView:_navigatorbar0];
    if (![[_navigatorbar0 backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar0 backgroundColor];
}
    _navBarHidden = NO;

    _wloginpanel = [[UMLayoutView alloc] init];
    _wloginpanel.controlId = @"wloginpanel";
    _wloginpanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_wloginpanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_wloginpanel info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_TOP",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:0.9490196 green:0.9490196 blue:0.9490196 alpha:1],@"backgroundColor",
                          @"",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil]];




// --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"p_txt_r":@"0.0",
                          @"width":@"44",
                          @"font_size":@"20",
                          @"txt_r":@"1.0",
                          @"font-pressed-color":@"#00a1ea",
                          @"txt_g":@"1.0",
                          @"id":@"button0",
                          @"p_txt_b":@"0.91764706",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#ffffff",
                          @"font-size":@"20",
                          @"onclick":@"button0_onclick",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"center",
                          @"background-image":@"icon_back.png",
                          @"p_txt_g":@"0.6313726",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button0];

// --label0
    _label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"id":@"label0",
                          @"halign":@"center",
                          @"height":@"fill",
                          @"weight":@"1",
                          @"font_family":@"ArialMT",
                          @"width":@"0",
                          @"font-family":@"default",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label0];

// --wmailtext
    _wmailtext = [UMControl creatControl:@"UMXTextField" container:self  params:@{
                          @"padding-left":@"24",
                          @"halign":@"LEFT",
                          @"placeholder":@"手机号",
                          @"width":@"fill",
                          @"font_size":@"17",
                          @"txt_r":@"0.08627451",
                          @"txt_g":@"0.49411765",
                          @"id":@"wmailtext",
                          @"margin-right":@"10",
                          @"maxlength":@"256",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#167ef8",
                          @"font-size":@"17",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.972549",
                          @"margin-top":@"10",
                          @"background-image":@"textboxbg.png",@"value":@""}];
    [(UMLayoutView*)_wloginpanel addSubUMXView:_wmailtext];

// --wusertext
    _wusertext = [UMControl creatControl:@"UMXTextField" container:self  params:@{
                          @"padding-left":@"24",
                          @"halign":@"LEFT",
                          @"placeholder":@"姓名",
                          @"width":@"fill",
                          @"font_size":@"17",
                          @"txt_r":@"0.08627451",
                          @"txt_g":@"0.49411765",
                          @"id":@"wusertext",
                          @"margin-right":@"10",
                          @"maxlength":@"256",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#167ef8",
                          @"font-size":@"17",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.972549",
                          @"margin-top":@"5",
                          @"background-image":@"textboxbg.png",@"value":@""}];
    [(UMLayoutView*)_wloginpanel addSubUMXView:_wusertext];

    _panel0 = [[UMLayoutView alloc] init];
    _panel0.controlId = @"panel0";
    _panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_wloginpanel addSubUMView:_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"24",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"10",@"marginLeft",
                          @"5",@"marginTop",
                          @"10",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_LEFT",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"44",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil]];




// --wpasstext
    _wpasstext = [UMControl creatControl:@"UMXTextField" container:self  params:@{
                          @"padding-left":@"24",
                          @"halign":@"LEFT",
                          @"placeholder":@"身份证号",
                          @"width":@"fill",
                          @"font_size":@"17",
                          @"txt_r":@"0.08627451",
                          @"txt_g":@"0.49411765",
                          @"id":@"wpasstext",
                          @"margin-right":@"10",
                          @"maxlength":@"256",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#167ef8",
                          @"font-size":@"17",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.972549",
                          @"margin-top":@"5",
                          @"background-image":@"textboxbg.png",@"value":@""}];
    [(UMLayoutView*)_wloginpanel addSubUMXView:_wpasstext];

// --textbox2
    _textbox2 = [UMControl creatControl:@"UMXTextField" container:self  params:@{
                          @"padding-left":@"24",
                          @"halign":@"LEFT",
                          @"placeholder":@"推荐人工号",
                          @"width":@"fill",
                          @"font_size":@"17",
                          @"txt_r":@"0.08627451",
                          @"txt_g":@"0.49411765",
                          @"id":@"textbox2",
                          @"margin-right":@"10",
                          @"maxlength":@"256",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#167ef8",
                          @"font-size":@"17",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.972549",
                          @"margin-top":@"5",
                          @"background-image":@"textboxbg.png",@"value":@""}];
    [(UMLayoutView*)_wloginpanel addSubUMXView:_textbox2];

// --textbox0
    _textbox0 = [UMControl creatControl:@"UMXTextField" container:self  params:@{
                          @"padding-left":@"24",
                          @"halign":@"LEFT",
                          @"placeholder":@"推荐人手机号",
                          @"width":@"fill",
                          @"font_size":@"17",
                          @"txt_r":@"0.08627451",
                          @"txt_g":@"0.49411765",
                          @"id":@"textbox0",
                          @"margin-right":@"10",
                          @"maxlength":@"256",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#167ef8",
                          @"font-size":@"17",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.972549",
                          @"margin-top":@"5",
                          @"background-image":@"textboxbg.png",@"value":@""}];
    [(UMLayoutView*)_wloginpanel addSubUMXView:_textbox0];

// --wregisterbutton
    _wregisterbutton = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"font_size":@"20",
                          @"txt_g":@"1.0",
                          @"id":@"wregisterbutton",
                          @"margin-right":@"10",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#f7931e",
                          @"font-size":@"20",
                          @"value":@"下一步",
                          @"border-right-width":@"1",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"halign":@"center",
                          @"border-radius":@"10",
                          @"width":@"fill",
                          @"txt_r":@"1.0",
                          @"bg_r":@"0.96862745",
                          @"border-bottom-color":@"#f7931e",
                          @"border-top-width":@"1",
                          @"border-left-color":@"#f7931e",
                          @"border-top-color":@"#f7931e",
                          @"color":@"#ffffff",
                          @"background":@"#f7931e",
                          @"margin-left":@"10",
                          @"onclick":@"wregisterbutton_onclick",
                          @"font-family":@"default",
                          @"bg_b":@"0.11764706",
                          @"margin-top":@"20",
                          @"valign":@"center",
                          @"bg_g":@"0.5764706"}];
    [(UMLayoutView*)_wloginpanel addSubUMXView:_wregisterbutton];

// --togglebuttongroup0
    _togglebuttongroup0 = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"togglebuttongroup0",
                          @"halign":@"CENTER",
                          @"height":@"44",
                          @"layout":@"Layout_hbox",
                          @"width":@"88",
                          @"valign":@"top",@"value":@"                    \n                     \n                "}];
    [(UMLayoutView*)_panel0 addSubUMXView:_togglebuttongroup0];

// --togglebutton0
    _togglebutton0 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"halign":@"center",
                          @"background-image-off":@"label_4_left",
                          @"width":@"44",
                          @"font_size":@"17",
                          @"txt_r":@"0.0",
                          @"textoff":@"男",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"background-image-on":@"label_4_left_touch",
                          @"txt_g":@"0.6313726",
                          @"id":@"togglebutton0",
                          @"p_txt_b":@"1.0",
                          @"height":@"42",
                          @"font_family":@"ArialMT",
                          @"color":@"#00a1ea",
                          @"font-size":@"17",
                          @"value":@"0",
                          @"font-family":@"default",
                          @"txt_b":@"0.91764706",
                          @"texton":@"男",
                          @"valign":@"center",
                          @"checked":@"true",
                          @"p_txt_g":@"1.0"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton0];

// --togglebutton1
    _togglebutton1 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"halign":@"center",
                          @"background-image-off":@"label_4_right",
                          @"width":@"44",
                          @"font_size":@"17",
                          @"txt_r":@"0.0",
                          @"textoff":@"女",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"background-image-on":@"label_4_right_touch",
                          @"txt_g":@"0.6313726",
                          @"id":@"togglebutton1",
                          @"p_txt_b":@"1.0",
                          @"height":@"42",
                          @"font_family":@"ArialMT",
                          @"color":@"#00a1ea",
                          @"font-size":@"17",
                          @"value":@"1",
                          @"font-family":@"default",
                          @"txt_b":@"0.91764706",
                          @"texton":@"女",
                          @"valign":@"center",
                          @"p_txt_g":@"1.0"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton1];


    [_viewObject adjustSize];
}

#pragma mark view on load

- (void)viewDidLoad
{
	[super viewDidLoad];
    [SysContext getInstance].CurrentViewController = self;
	[self.view addSubview:_viewObject.view];
    [self initChilds];
    

    if(!isDialog){

         if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
            self.view.bounds = CGRectMake(0, -20, self.view.frame.size.width, self.view.frame.size.height );
         }
    

    }

  
    















    //加载JS
   [self performSelectorInBackground:@selector(umOnload) withObject:nil];
}
-(void)umOnload{

    @autoreleasepool {
    
        AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
        _currentContainer = [appDelegate currentContainer];
        
        _currentContainer.controllerName = [[namespaceC stringByAppendingString:@"."]stringByAppendingString:controllerC];
        [_currentContainer initCurrentViewController:_currentContainer.controllerName];
        
        [_currentContainer initCurrentViewContext:[[namespaceC stringByAppendingString:@"."]stringByAppendingString:ModelName]];
        
        
        
        //JS同步加载完成 回到主线程 刷新UI
        [self performSelectorOnMainThread:@selector(umload) withObject:nil waitUntilDone:YES];
        
  
    }
}
-(void)umload{

     















}
- (void)viewWillAppear:(BOOL)animated
{
    [self resignFirstResponder];
    [super viewWillAppear:animated];
    [SysContext getInstance].CurrentViewController = self;

    if (isResum) {//第二次进入调用
          
    }else {
        isResum = YES;
    }
    [_viewObject umviewAppear];
    [UIApplication sharedApplication].keyWindow.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    
    if([[UIColor getWhiteBlackByHexString:@"#ffffff"] isEqual:[UIColor blackColor]])
    {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
    else
    {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    }

}
- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [_viewObject vmviewDisappear];
}
- (void)viewDidUnload
{
	[super viewDidUnload];
}

#pragma mark  databind

- (void)dataBind:(NSString*)data{
    if(data !=nil){
        [_context updateCtx:data];
 _ctx = _context;

    }
    
    















    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions

- (void)wregisterbutton_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"wregisterbutton_onclick" method:@"this.nextJs()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)button0_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"button0_onclick" method:@"this.closeRegister()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
























#pragma mark  InterfaceOrientation

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}
- (BOOL)shouldAutorotate
{
    return YES;
}
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    CGRect frame;
    self.willOrientation = toInterfaceOrientation;
    frame = [self frameForOrientation];
    self.viewObject.frame = frame;
    [self.viewObject clearFinishedAdjustSize];
    [self.viewObject adjustSize];

     [_viewObject umviewAppear];
     [self operateOrientationViewDidAppear];
}

#pragma mark  摇一摇

-(BOOL)canBecomeFirstResponder
{
    return YES;
}
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    if (motion == UIEventSubtypeMotionShake) {
        //NSLog(@"摇一摇");
        
        
    }
}

#pragma mark container

-(void)onInit{
    [_currentContainer onInit:controllerC];
}
-(void)onLoad{
    [_currentContainer onLoad:controllerC];
}
-(void)onDataBinding{
    //here do databinding
    NSString *context = [_currentContainer getModel:ModelName];
    _contextDictionary = [context objectFromJSONString];
    if(_contextDictionary != nil)
        [self dataBind:[_contextDictionary JSONString]];
}
-(void)onComplete{
    [_currentContainer onComplete:controllerC];
}
-(id)valueByBindfield:(NSString*)bindingfield
{
    return [_contextDictionary objectForKey:bindingfield];
}

@end
