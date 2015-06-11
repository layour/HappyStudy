//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "examselectController.h"















@interface examselectController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation examselectController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize ExamSelect = _ExamSelect;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize panel0 = _panel0;












static NSString *controllerC = @"ExamSelectController";

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
        _ExamSelect = _viewObject;

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
    [(UMLayoutView*)_ExamSelect addSubUMView:_viewPage0];
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



    _navigatorbar0.naviTitle = [UMParser parseExpr:nil expr:@"模拟考试" ctx:_ctx];;
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

// --button2
    _button2 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"padding-left":@"20",
                          @"halign":@"left",
                          @"p_txt_r":@"0.0",
                          @"width":@"44",
                          @"font_size":@"20",
                          @"txt_r":@"1.0",
                          @"font-pressed-color":@"#00a1ea",
                          @"txt_g":@"1.0",
                          @"id":@"button2",
                          @"p_txt_b":@"0.91764706",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#ffffff",
                          @"font-size":@"20",
                          @"onclick":@"button2_onclick",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"center",
                          @"p_txt_g":@"0.6313726",
                          @"background-image":@"icon_menu.png",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button2];

// --imagebutton0
    _imagebutton0 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"p_txt_r":@"0.0",
                          @"font_size":@"10",
                          @"font-pressed-color":@"#00a1ea",
                          @"imagebuttontype":@"icon",
                          @"id":@"imagebutton0",
                          @"txt_g":@"0.5686275",
                          @"height":@"88",
                          @"p_txt_b":@"0.91764706",
                          @"font_family":@"ArialMT",
                          @"font-size":@"10",
                          @"value":@"图标名称",
                          @"icon-background-image":@"myhead.png",
                          @"txt_b":@"0.5686275",
                          @"p_txt_g":@"0.6313726",
                          @"halign":@"center",
                          @"width":@"88",
                          @"icon-width":@"88",
                          @"txt_r":@"0.5686275",
                          @"istogglebutton":@"false",
                          @"margin-bottom":@"20",
                          @"icon-height":@"88",
                          @"color":@"#919191",
                          @"font-family":@"default",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"3"}];
    [(UMLayoutView*)_panel0 addSubUMXView:_imagebutton0];

// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"widthwrap":@"30.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"1.0",
                          @"margin-bottom":@"10",
                          @"id":@"label1",
                          @"txt_g":@"1.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#FFFFFF",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"center",@"value":@"张三"}];
    [(UMLayoutView*)_panel0 addSubUMXView:_label1];

// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"190",
                          @"font_size":@"14",
                          @"txt_r":@"1.0",
                          @"type":@"multiline",
                          @"id":@"label2",
                          @"txt_g":@"1.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#FFFFFF",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"top",@"value":@"岗前班-201512 | 中国平安培训"}];
    [(UMLayoutView*)_panel0 addSubUMXView:_label2];

// --label3
    _label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"190",
                          @"font_size":@"14",
                          @"txt_r":@"1.0",
                          @"type":@"multiline",
                          @"id":@"label3",
                          @"txt_g":@"1.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#FFFFFF",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"margin-top":@"40",
                          @"valign":@"top",@"value":@"考试题库：100题"}];
    [(UMLayoutView*)_panel0 addSubUMXView:_label3];

// --label4
    _label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"190",
                          @"font_size":@"14",
                          @"txt_r":@"1.0",
                          @"type":@"multiline",
                          @"id":@"label4",
                          @"txt_g":@"1.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#FFFFFF",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"margin-top":@"15",
                          @"valign":@"top",@"value":@"考试时间：120分钟"}];
    [(UMLayoutView*)_panel0 addSubUMXView:_label4];

// --label5
    _label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"190",
                          @"font_size":@"14",
                          @"txt_r":@"1.0",
                          @"type":@"multiline",
                          @"id":@"label5",
                          @"txt_g":@"1.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#FFFFFF",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"margin-top":@"15",
                          @"valign":@"top",@"value":@"合格标准：满分100,90及格"}];
    [(UMLayoutView*)_panel0 addSubUMXView:_label5];

// --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"font_size":@"20",
                          @"txt_g":@"0.6313726",
                          @"id":@"button1",
                          @"margin-right":@"10",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#ffffff",
                          @"font-size":@"20",
                          @"value":@"全真模拟考试",
                          @"border-right-width":@"1",
                          @"txt_b":@"0.91764706",
                          @"border-left-width":@"1",
                          @"halign":@"center",
                          @"border-radius":@"10",
                          @"width":@"fill",
                          @"txt_r":@"0.0",
                          @"bg_r":@"1.0",
                          @"border-bottom-color":@"#ffffff",
                          @"border-top-width":@"1",
                          @"border-left-color":@"#ffffff",
                          @"border-top-color":@"#ffffff",
                          @"color":@"#00a1ea",
                          @"background":@"#FFFFFF",
                          @"margin-left":@"10",
                          @"onclick":@"button1_onclick",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"margin-top":@"40",
                          @"valign":@"center",
                          @"bg_g":@"1.0"}];
    [(UMLayoutView*)_panel0 addSubUMXView:_button1];


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
[args setInvoke:[self getInvokeInfo:@"button0_onclick" method:@"this.closeExamSelect()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)button2_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"button2_onclick" method:@"this.openExamHistory()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)button1_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"button1_onclick" method:@"this.enterExamTopic()" sender:sender]];

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
