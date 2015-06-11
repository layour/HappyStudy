//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "homeController.h"




























@interface homeController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation homeController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize Home = _Home;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize panel0 = _panel0;

@synthesize toolbar0 = _toolbar0;




@synthesize panel2 = _panel2;

@synthesize panel3 = _panel3;




@synthesize panel4 = _panel4;

@synthesize panel5 = _panel5;




@synthesize panel9 = _panel9;

@synthesize panel8 = _panel8;









static NSString *controllerC = @"HomeController";

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
        _Home = _viewObject;

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
    //_viewObject.isHeightFill = YES;
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
    [(UMLayoutView*)_Home addSubUMView:_viewPage0];
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
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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



    _navigatorbar0.naviTitle = [UMParser parseExpr:nil expr:@"快乐学" ctx:_ctx];;
    [(UMLayoutView*)_viewPage0 addSubUMView:_navigatorbar0];
    if (![[_navigatorbar0 backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar0 backgroundColor];
}
    _navBarHidden = NO;

    _panel0 = [[UMLayoutView alloc] init];
    _panel0.controlId = @"panel0";
    _panel0.layoutType = Layout_vbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
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
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
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




    _toolbar0 = [[UMLayoutView alloc] init];
    _toolbar0.controlId = @"toolbar0";
    _toolbar0.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_toolbar0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"49",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"tabbar",@"backgroundImagePath",
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



    [(UMLayoutView*)_viewPage0 addSubUMView:_toolbar0];

// --label0
    _label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label0",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label0];

// --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"44",
                          @"font_size":@"18",
                          @"txt_r":@"1.0",
                          @"id":@"button1",
                          @"txt_g":@"1.0",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#ffffff",
                          @"font-size":@"18",
                          @"onclick":@"button1_onclick",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"center",
                          @"background-image":@"icon_edit.png",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button1];

// --imageflipper0
    _imageflipper0 = [UMControl creatControl:@"UMXImageFlipper" container:self  params:@{
                          @"id":@"imageflipper0",
                          @"titleheight":@"20",
                          @"height":@"120",
                          @"descheight":@"0",
                          @"interval":@"2000",
                          @"flipperbtnvisible":@"false",
                          @"width":@"fill",
                          @"scaletype":@"fitxy",
                          @"isloop":@"true",
                          @"autoflip":@"true",@"value":@"                \n                \n                 \n            "}];
    [(UMLayoutView*)_panel0 addSubUMXView:_imageflipper0];

    _panel2 = [[UMLayoutView alloc] init];
    _panel2.controlId = @"panel2";
    _panel2.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"2",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"5",@"marginLeft",
                          @"5",@"marginTop",
                          @"5",@"marginRight",
                          @"5",@"marginBottom",
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
                          @"0",@"height",
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




    _panel3 = [[UMLayoutView alloc] init];
    _panel3.controlId = @"panel3";
    _panel3.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"5",@"marginLeft",
                          @"0",@"marginTop",
                          @"5",@"marginRight",
                          @"5",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
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
                          @"0",@"height",
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




// --imageflipper0_0
    _imageflipper0_0 = [UMControl creatControl:@"UMXImageFlipperItem" container:self  params:@{
                          @"id":@"imageflipper0_0",
                          @"title":@" 高山流水",
                          @"description":@"",
                          @"src":@"bz1.png",@"value":@""}];
    [(UMLayoutView*)_imageflipper0 addView:_imageflipper0_0];

// --imageflipper0_1
    _imageflipper0_1 = [UMControl creatControl:@"UMXImageFlipperItem" container:self  params:@{
                          @"id":@"imageflipper0_1",
                          @"title":@"人间仙境",
                          @"description":@"",
                          @"src":@"bz2.png",@"value":@""}];
    [(UMLayoutView*)_imageflipper0 addView:_imageflipper0_1];

// --imageflipper0_2
    _imageflipper0_2 = [UMControl creatControl:@"UMXImageFlipperItem" container:self  params:@{
                          @"id":@"imageflipper0_2",
                          @"title":@"明媚阳光",
                          @"description":@"",
                          @"src":@"bz3.png",@"value":@""}];
    [(UMLayoutView*)_imageflipper0 addView:_imageflipper0_2];

    _panel4 = [[UMLayoutView alloc] init];
    _panel4.controlId = @"panel4";
    _panel4.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"2",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"2",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
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




    _panel5 = [[UMLayoutView alloc] init];
    _panel5.controlId = @"panel5";
    _panel5.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panel5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel5 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"2",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
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




// --imagebutton0
    _imagebutton0 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"p_txt_r":@"1.0",
                          @"font_size":@"18",
                          @"font-pressed-color":@"#ffffff",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton0",
                          @"p_txt_b":@"1.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#FC6857",
                          @"font-size":@"18",
                          @"icon-background-image":@"exam.png",
                          @"value":@"模拟考试",
                          @"border-right-width":@"1",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"p_txt_g":@"1.0",
                          @"halign":@"center",
                          @"border-radius":@"10",
                          @"width":@"fill",
                          @"txt_r":@"1.0",
                          @"icon-width":@"66",
                          @"istogglebutton":@"false",
                          @"bg_r":@"0.9882353",
                          @"border-bottom-color":@"#FC6857",
                          @"border-top-width":@"1",
                          @"border-left-color":@"#FC6857",
                          @"border-top-color":@"#FC6857",
                          @"icon-height":@"66",
                          @"color":@"#ffffff",
                          @"background":@"#FC6857",
                          @"onclick":@"imagebutton0_onclick",
                          @"font-family":@"default",
                          @"bg_b":@"0.34117648",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"bg_g":@"0.40784314",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_panel4 addSubUMXView:_imagebutton0];

// --imagebutton1
    _imagebutton1 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"p_txt_r":@"1.0",
                          @"weight":@"1",
                          @"font_size":@"14",
                          @"font-pressed-color":@"#ffffff",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton1",
                          @"p_txt_b":@"1.0",
                          @"height":@"0",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#2FB13A",
                          @"font-size":@"14",
                          @"icon-background-image":@"myerror.png",
                          @"border-right-width":@"1",
                          @"value":@"我的错题",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"p_txt_g":@"1.0",
                          @"halign":@"center",
                          @"border-radius":@"10",
                          @"width":@"fill",
                          @"txt_r":@"1.0",
                          @"icon-width":@"33",
                          @"istogglebutton":@"false",
                          @"margin-bottom":@"2",
                          @"bg_r":@"0.18431373",
                          @"border-bottom-color":@"#2FB13A",
                          @"border-top-width":@"1",
                          @"border-top-color":@"#2FB13A",
                          @"icon-height":@"33",
                          @"border-left-color":@"#2FB13A",
                          @"color":@"#ffffff",
                          @"background":@"#2FB13A",
                          @"onclick":@"imagebutton1_onclick",
                          @"font-family":@"default",
                          @"bg_b":@"0.22745098",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"bg_g":@"0.69411767",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_imagebutton1];

// --imagebutton2
    _imagebutton2 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"p_txt_r":@"1.0",
                          @"weight":@"1",
                          @"font_size":@"14",
                          @"font-pressed-color":@"#ffffff",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton2",
                          @"p_txt_b":@"1.0",
                          @"height":@"0",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#687CF7",
                          @"font-size":@"14",
                          @"icon-background-image":@"network.png",
                          @"border-right-width":@"1",
                          @"value":@"网络错题",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"p_txt_g":@"1.0",
                          @"halign":@"center",
                          @"border-radius":@"10",
                          @"width":@"fill",
                          @"txt_r":@"1.0",
                          @"icon-width":@"33",
                          @"istogglebutton":@"false",
                          @"bg_r":@"0.40784314",
                          @"border-bottom-color":@"#687CF7",
                          @"border-top-width":@"1",
                          @"border-top-color":@"#687CF7",
                          @"icon-height":@"33",
                          @"border-left-color":@"#687CF7",
                          @"color":@"#ffffff",
                          @"background":@"#687CF7",
                          @"onclick":@"imagebutton2_onclick",
                          @"font-family":@"default",
                          @"bg_b":@"0.96862745",
                          @"margin-top":@"2",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"bg_g":@"0.4862745",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_imagebutton2];

    _panel9 = [[UMLayoutView alloc] init];
    _panel9.controlId = @"panel9";
    _panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel3 addSubUMView:_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"2",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"2",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_LEFT",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
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




    _panel8 = [[UMLayoutView alloc] init];
    _panel8.controlId = @"panel8";
    _panel8.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel3 addSubUMView:_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"2",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
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




// --imagebutton3
    _imagebutton3 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"p_txt_r":@"1.0",
                          @"weight":@"1",
                          @"font_size":@"14",
                          @"font-pressed-color":@"#ffffff",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton3",
                          @"margin-right":@"2",
                          @"p_txt_b":@"1.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#9C64E4",
                          @"font-size":@"14",
                          @"icon-background-image":@"chapter.png",
                          @"border-right-width":@"1",
                          @"value":@"章节练习",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"p_txt_g":@"1.0",
                          @"halign":@"center",
                          @"border-radius":@"10",
                          @"width":@"0",
                          @"txt_r":@"1.0",
                          @"icon-width":@"33",
                          @"istogglebutton":@"false",
                          @"bg_r":@"0.6117647",
                          @"border-bottom-color":@"#9C64E4",
                          @"border-top-width":@"1",
                          @"border-left-color":@"#9C64E4",
                          @"border-top-color":@"#9C64E4",
                          @"icon-height":@"33",
                          @"color":@"#ffffff",
                          @"background":@"#9C64E4",
                          @"onclick":@"imagebutton3_onclick",
                          @"font-family":@"default",
                          @"bg_b":@"0.89411765",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"bg_g":@"0.39215687",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_panel9 addSubUMXView:_imagebutton3];

// --imagebutton4
    _imagebutton4 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"p_txt_r":@"1.0",
                          @"weight":@"1",
                          @"font_size":@"14",
                          @"font-pressed-color":@"#ffffff",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton4",
                          @"p_txt_b":@"1.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#16CFB2",
                          @"font-size":@"14",
                          @"icon-background-image":@"random.png",
                          @"border-right-width":@"1",
                          @"value":@"随机练习",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"p_txt_g":@"1.0",
                          @"halign":@"center",
                          @"border-radius":@"10",
                          @"width":@"0",
                          @"txt_r":@"1.0",
                          @"icon-width":@"33",
                          @"istogglebutton":@"false",
                          @"bg_r":@"0.08627451",
                          @"border-bottom-color":@"#16CFB2",
                          @"border-top-width":@"1",
                          @"border-top-color":@"#16CFB2",
                          @"icon-height":@"33",
                          @"border-left-color":@"#16CFB2",
                          @"color":@"#ffffff",
                          @"background":@"#16CFB2",
                          @"margin-left":@"2",
                          @"onclick":@"imagebutton4_onclick",
                          @"font-family":@"default",
                          @"bg_b":@"0.69803923",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"bg_g":@"0.8117647",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_panel9 addSubUMXView:_imagebutton4];

// --imagebutton5
    _imagebutton5 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"p_txt_r":@"1.0",
                          @"font_size":@"14",
                          @"font-pressed-color":@"#ffffff",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton5",
                          @"p_txt_b":@"1.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#FA5DBA",
                          @"font-size":@"14",
                          @"icon-background-image":@"collect.png",
                          @"value":@"我的收藏",
                          @"border-right-width":@"1",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"p_txt_g":@"1.0",
                          @"halign":@"center",
                          @"border-radius":@"10",
                          @"width":@"fill",
                          @"txt_r":@"1.0",
                          @"icon-width":@"33",
                          @"istogglebutton":@"false",
                          @"bg_r":@"0.98039216",
                          @"border-bottom-color":@"#FA5DBA",
                          @"border-top-width":@"1",
                          @"border-left-color":@"#FA5DBA",
                          @"border-top-color":@"#FA5DBA",
                          @"icon-height":@"33",
                          @"color":@"#ffffff",
                          @"background":@"#FA5DBA",
                          @"onclick":@"imagebutton5_onclick",
                          @"font-family":@"default",
                          @"bg_b":@"0.7294118",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"bg_g":@"0.3647059",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_panel8 addSubUMXView:_imagebutton5];

// --imagebutton6
    _imagebutton6 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"p_txt_r":@"0.0",
                          @"weight":@"1",
                          @"font_size":@"12",
                          @"font-pressed-color":@"#00a1ea",
                          @"id":@"imagebutton6",
                          @"imagebuttontype":@"icontext",
                          @"txt_g":@"0.5686275",
                          @"height":@"fill",
                          @"p_txt_b":@"0.91764706",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"value":@"考试",
                          @"icon-background-image":@"tab_subscription",
                          @"txt_b":@"0.5686275",
                          @"p_txt_g":@"0.6313726",
                          @"halign":@"center",
                          @"width":@"0",
                          @"icon-width":@"25",
                          @"txt_r":@"0.5686275",
                          @"istogglebutton":@"false",
                          @"icon-height":@"25",
                          @"color":@"#919191",
                          @"icon-pressed-image":@"tab_subscription_touch",
                          @"font-family":@"default",
                          @"valign":@"center",
                          @"checked":@"true",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_toolbar0 addSubUMXView:_imagebutton6];

// --imagebutton7
    _imagebutton7 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"p_txt_r":@"0.0",
                          @"weight":@"1",
                          @"font_size":@"12",
                          @"font-pressed-color":@"#00a1ea",
                          @"id":@"imagebutton7",
                          @"imagebuttontype":@"icontext",
                          @"txt_g":@"0.5686275",
                          @"height":@"fill",
                          @"p_txt_b":@"0.91764706",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"value":@"签到",
                          @"icon-background-image":@"tab_edit",
                          @"txt_b":@"0.5686275",
                          @"p_txt_g":@"0.6313726",
                          @"halign":@"center",
                          @"width":@"0",
                          @"icon-width":@"25",
                          @"txt_r":@"0.5686275",
                          @"istogglebutton":@"false",
                          @"icon-height":@"25",
                          @"color":@"#919191",
                          @"onclick":@"imagebutton7_onclick",
                          @"icon-pressed-image":@"tab_edit_touch",
                          @"font-family":@"default",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_toolbar0 addSubUMXView:_imagebutton7];

// --imagebutton8
    _imagebutton8 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"p_txt_r":@"0.0",
                          @"weight":@"1",
                          @"font_size":@"12",
                          @"font-pressed-color":@"#00a1ea",
                          @"id":@"imagebutton8",
                          @"imagebuttontype":@"icontext",
                          @"txt_g":@"0.5686275",
                          @"height":@"fill",
                          @"p_txt_b":@"0.91764706",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"value":@"统计",
                          @"icon-background-image":@"tab_chart",
                          @"txt_b":@"0.5686275",
                          @"p_txt_g":@"0.6313726",
                          @"halign":@"center",
                          @"width":@"0",
                          @"icon-width":@"25",
                          @"txt_r":@"0.5686275",
                          @"istogglebutton":@"false",
                          @"icon-height":@"25",
                          @"color":@"#919191",
                          @"onclick":@"imagebutton8_onclick",
                          @"icon-pressed-image":@"tab_chart_touch",
                          @"font-family":@"default",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_toolbar0 addSubUMXView:_imagebutton8];

// --imagebutton9
    _imagebutton9 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"p_txt_r":@"0.0",
                          @"weight":@"1",
                          @"font_size":@"12",
                          @"font-pressed-color":@"#00a1ea",
                          @"id":@"imagebutton9",
                          @"imagebuttontype":@"icontext",
                          @"txt_g":@"0.5686275",
                          @"height":@"fill",
                          @"p_txt_b":@"0.91764706",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"value":@"关于我",
                          @"icon-background-image":@"tab_contact",
                          @"txt_b":@"0.5686275",
                          @"p_txt_g":@"0.6313726",
                          @"halign":@"center",
                          @"width":@"0",
                          @"icon-width":@"25",
                          @"txt_r":@"0.5686275",
                          @"istogglebutton":@"false",
                          @"icon-height":@"25",
                          @"color":@"#919191",
                          @"onclick":@"imagebutton9_onclick",
                          @"icon-pressed-image":@"tab_contact_touch",
                          @"font-family":@"default",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_toolbar0 addSubUMXView:_imagebutton9];


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
        
        [_currentContainer initController: @"com.layou.study.GlobalFunction" ];

        
        //JS同步加载完成 回到主线程 刷新UI
        [self performSelectorOnMainThread:@selector(umload) withObject:nil waitUntilDone:YES];
        
  
    }
}
-(void)umload{

     [self viewpage0_onload:nil  args:nil];



























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

- (void)imagebutton5_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton5_onclick" method:@"this.enterChapterCollect()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)imagebutton9_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton9_onclick" method:@"this.openAbout()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)imagebutton7_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton7_onclick" method:@"this.openClockingIn()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)imagebutton4_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton4_onclick" method:@"this.enterExerciseTopic()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)imagebutton8_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton8_onclick" method:@"this.openStatistics()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)button1_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"button1_onclick" method:@"this.clockingIn()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)imagebutton0_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton0_onclick" method:@"this.enterExamSelect()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)imagebutton3_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton3_onclick" method:@"this.enterChapterExercise()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)imagebutton2_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton2_onclick" method:@"this.enterChapterCollect()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)imagebutton1_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"imagebutton1_onclick" method:@"this.enterChapterCollect()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)viewpage0_onload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"viewpage0_onload" method:@"this.addBackEvent()" sender:sender]];

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
