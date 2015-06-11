//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "exercisetopicController.h"




















































@interface exercisetopicController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation exercisetopicController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize ExerciseTopic = _ExerciseTopic;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;







@synthesize panel0 = _panel0;

@synthesize panel1 = _panel1;

@synthesize panel2 = _panel2;


@synthesize panel7 = _panel7;

@synthesize panel8 = _panel8;

@synthesize panel9 = _panel9;

@synthesize panel10 = _panel10;










@synthesize panel3 = _panel3;

@synthesize panel4 = _panel4;

@synthesize panel5 = _panel5;

@synthesize panel6 = _panel6;










@synthesize panel11 = _panel11;

@synthesize panel12 = _panel12;

@synthesize panel13 = _panel13;

@synthesize panel14 = _panel14;










static NSString *controllerC = @"ExerciseTopicController";

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
        _ExerciseTopic = _viewObject;

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
    [(UMLayoutView*)_ExerciseTopic addSubUMView:_viewPage0];
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
                          @"56",@"height",
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



    [(UMLayoutView*)_viewPage0 addSubUMView:_navigatorbar0];
    if (![[_navigatorbar0 backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar0 backgroundColor];
}
    _navBarHidden = NO;

// --flipperdefine0
    _flipperdefine0 = [UMControl creatControl:@"UMXViewFlipper" container:self  params:@{
                          @"id":@"flipperdefine0",
                          @"halign":@"center",
                          @"height":@"0",
                          @"weight":@"1",
                          @"layout":@"Layout_vbox",
                          @"width":@"fill",
                          @"viewindex":@"0",
                          @"valign":@"TOP",@"value":@"            \n            \n             \n        "}];
    [(UMLayoutView*)_viewPage0 addSubUMXView:_flipperdefine0];

// --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"padding-left":@"20",
                          @"halign":@"left",
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
                          @"p_txt_g":@"0.6313726",
                          @"background-image":@"icon_back.png",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button0];

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

// --imagebutton0
    _imagebutton0 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"55",
                          @"font_size":@"12",
                          @"txt_r":@"1.0",
                          @"icon-width":@"32",
                          @"istogglebutton":@"false",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton0",
                          @"icon-height":@"32",
                          @"height":@"55",
                          @"font_family":@"ArialMT",
                          @"color":@"#FFFFFF",
                          @"font-size":@"12",
                          @"value":@"详解",
                          @"icon-background-image":@"icon_questions.png",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"0"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_imagebutton0];

// --imagebutton1
    _imagebutton1 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"55",
                          @"font_size":@"12",
                          @"txt_r":@"1.0",
                          @"icon-width":@"32",
                          @"istogglebutton":@"false",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton1",
                          @"icon-height":@"32",
                          @"height":@"55",
                          @"font_family":@"ArialMT",
                          @"color":@"#FFFFFF",
                          @"font-size":@"12",
                          @"value":@"1/100",
                          @"icon-background-image":@"icon_database.png",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"0"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_imagebutton1];

// --imagebutton2
    _imagebutton2 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"55",
                          @"font_size":@"12",
                          @"txt_r":@"1.0",
                          @"icon-width":@"32",
                          @"istogglebutton":@"false",
                          @"txt_g":@"1.0",
                          @"id":@"imagebutton2",
                          @"icon-height":@"32",
                          @"height":@"55",
                          @"font_family":@"ArialMT",
                          @"color":@"#FFFFFF",
                          @"font-size":@"12",
                          @"value":@"收藏",
                          @"icon-background-image":@"icon_heart.png",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"0"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_imagebutton2];

    _panel0 = [[UMLayoutView alloc] init];
    _panel0.controlId = @"panel0";
    _panel0.layoutType = Layout_vbox;
[_flipperdefine0 addView:_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _panel1 = [[UMLayoutView alloc] init];
    _panel1.controlId = @"panel1";
    _panel1.layoutType = Layout_vbox;
[_flipperdefine0 addView:_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _panel2 = [[UMLayoutView alloc] init];
    _panel2.controlId = @"panel2";
    _panel2.layoutType = Layout_vbox;
[_flipperdefine0 addView:_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --label6
    _label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"margin-bottom":@"10",
                          @"type":@"multiline",
                          @"txt_g":@"0.0",
                          @"id":@"label6",
                          @"margin-right":@"15",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"margin-top":@"20",
                          @"valign":@"top",@"value":@"一年期的意外伤害保险费率厘定的因素主要是考虑？ "}];
    [(UMLayoutView*)_panel0 addSubUMXView:_label6];

    _panel7 = [[UMLayoutView alloc] init];
    _panel7.controlId = @"panel7";
    _panel7.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel7];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel7 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"10",@"marginLeft",
                          @"0",@"marginTop",
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




    _panel8 = [[UMLayoutView alloc] init];
    _panel8.controlId = @"panel8";
    _panel8.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




    _panel9 = [[UMLayoutView alloc] init];
    _panel9.controlId = @"panel9";
    _panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




    _panel10 = [[UMLayoutView alloc] init];
    _panel10.controlId = @"panel10";
    _panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




// --checkbox4
    _checkbox4 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox4",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"checked":@"checked",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel7 addSubUMXView:_checkbox4];

// --label7
    _label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label7",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"预定利率"}];
    [(UMLayoutView*)_panel7 addSubUMXView:_label7];

// --checkbox5
    _checkbox5 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox5",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel8 addSubUMXView:_checkbox5];

// --label8
    _label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label8",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"意外的持续时间"}];
    [(UMLayoutView*)_panel8 addSubUMXView:_label8];

// --checkbox6
    _checkbox6 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox6",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel9 addSubUMXView:_checkbox6];

// --label9
    _label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label9",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"被保险人的职业、工种"}];
    [(UMLayoutView*)_panel9 addSubUMXView:_label9];

// --checkbox7
    _checkbox7 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox7",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel10 addSubUMXView:_checkbox7];

// --label10
    _label10 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label10",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"被保险人的死亡率"}];
    [(UMLayoutView*)_panel10 addSubUMXView:_label10];

// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"margin-bottom":@"10",
                          @"type":@"multiline",
                          @"txt_g":@"0.0",
                          @"id":@"label1",
                          @"margin-right":@"15",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"margin-top":@"20",
                          @"valign":@"top",@"value":@"根据我国消费者权益保护法的规定，消费者协会履行的职能之一是？ "}];
    [(UMLayoutView*)_panel1 addSubUMXView:_label1];

    _panel3 = [[UMLayoutView alloc] init];
    _panel3.controlId = @"panel3";
    _panel3.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"10",@"marginLeft",
                          @"0",@"marginTop",
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




    _panel4 = [[UMLayoutView alloc] init];
    _panel4.controlId = @"panel4";
    _panel4.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




    _panel5 = [[UMLayoutView alloc] init];
    _panel5.controlId = @"panel5";
    _panel5.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel5 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




    _panel6 = [[UMLayoutView alloc] init];
    _panel6.controlId = @"panel6";
    _panel6.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel6];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel6 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




// --checkbox0
    _checkbox0 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox0",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"checked":@"checked",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel3 addSubUMXView:_checkbox0];

// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label2",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"参与生产企业的年度生产计划的制定"}];
    [(UMLayoutView*)_panel3 addSubUMXView:_label2];

// --checkbox1
    _checkbox1 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox1",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel4 addSubUMXView:_checkbox1];

// --label3
    _label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label3",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"受理经营者的投诉，并对投诉事项进行调查、调解"}];
    [(UMLayoutView*)_panel4 addSubUMXView:_label3];

// --checkbox2
    _checkbox2 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox2",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel5 addSubUMXView:_checkbox2];

// --label4
    _label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label4",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"参与销售企业市场开拓计划的制定"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_label4];

// --checkbox3
    _checkbox3 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox3",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel6 addSubUMXView:_checkbox3];

// --label5
    _label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label5",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"对损害消费者合法权益的行为，通过大众传播媒介予以揭露、批评"}];
    [(UMLayoutView*)_panel6 addSubUMXView:_label5];

// --label11
    _label11 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"margin-bottom":@"10",
                          @"type":@"multiline",
                          @"txt_g":@"0.0",
                          @"id":@"label11",
                          @"margin-right":@"15",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"margin-top":@"20",
                          @"valign":@"top",@"value":@"下列不属于人身保险特征的是？ "}];
    [(UMLayoutView*)_panel2 addSubUMXView:_label11];

    _panel11 = [[UMLayoutView alloc] init];
    _panel11.controlId = @"panel11";
    _panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"10",@"marginLeft",
                          @"0",@"marginTop",
                          @"10",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_LEFT",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"YES",@"isHeightWrap", 
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




    _panel12 = [[UMLayoutView alloc] init];
    _panel12.controlId = @"panel12";
    _panel12.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




    _panel13 = [[UMLayoutView alloc] init];
    _panel13.controlId = @"panel13";
    _panel13.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




    _panel14 = [[UMLayoutView alloc] init];
    _panel14.controlId = @"panel14";
    _panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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




// --checkbox8
    _checkbox8 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox8",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"checked":@"checked",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel11 addSubUMXView:_checkbox8];

// --label12
    _label12 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label12",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"人身风险的特殊性"}];
    [(UMLayoutView*)_panel11 addSubUMXView:_label12];

// --checkbox9
    _checkbox9 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox9",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel12 addSubUMXView:_checkbox9];

// --label13
    _label13 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label13",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"保险标的的特殊性"}];
    [(UMLayoutView*)_panel12 addSubUMXView:_label13];

// --checkbox10
    _checkbox10 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox10",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel13 addSubUMXView:_checkbox10];

// --label14
    _label14 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label14",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"保险费率厘定的特殊性"}];
    [(UMLayoutView*)_panel13 addSubUMXView:_label14];

// --checkbox11
    _checkbox11 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox11",
                          @"height":@"44",
                          @"width":@"44",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel14 addSubUMXView:_checkbox11];

// --label15
    _label15 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"id":@"label15",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"44.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"保险金额确定的特殊性"}];
    [(UMLayoutView*)_panel14 addSubUMXView:_label15];


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

- (void)button0_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"button0_onclick" method:@"this.closeExerciseTopic()" sender:sender]];

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
