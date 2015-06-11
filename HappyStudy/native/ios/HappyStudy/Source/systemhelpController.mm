//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "systemhelpController.h"













@interface systemhelpController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation systemhelpController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize SystemHelp = _SystemHelp;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;











static NSString *controllerC = @"SystemHelpController";

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
        _SystemHelp = _viewObject;

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
    [(UMLayoutView*)_SystemHelp addSubUMView:_viewPage0];
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



    _navigatorbar0.naviTitle = [UMParser parseExpr:nil expr:@"系统帮助" ctx:_ctx];;
    [(UMLayoutView*)_viewPage0 addSubUMView:_navigatorbar0];
    if (![[_navigatorbar0 backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar0 backgroundColor];
}
    _navBarHidden = NO;

// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.5019608",
                          @"txt_g":@"0.5019608",
                          @"id":@"label1",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#808080",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.5019608",
                          @"margin-top":@"10",
                          @"valign":@"center",@"value":@"常见问题"}];
    [(UMLayoutView*)_viewPage0 addSubUMXView:_label1];

// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"font_size":@"16",
                          @"txt_g":@"1.0",
                          @"id":@"label2",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#f7931e",
                          @"font-size":@"16",
                          @"border-right-width":@"1",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"padding-left":@"5",
                          @"halign":@"left",
                          @"border-radius":@"5",
                          @"width":@"fill",
                          @"txt_r":@"1.0",
                          @"margin-bottom":@"5",
                          @"bg_r":@"0.96862745",
                          @"border-bottom-color":@"#f7931e",
                          @"border-top-width":@"1",
                          @"border-top-color":@"#f7931e",
                          @"border-left-color":@"#f7931e",
                          @"color":@"#FFFFFF",
                          @"heightwrap":@"23.0",
                          @"background":@"#f7931e",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"bg_b":@"0.11764706",
                          @"margin-top":@"5",
                          @"valign":@"center",
                          @"bg_g":@"0.5764706",@"value":@"1、如何进行签到/补签？"}];
    [(UMLayoutView*)_viewPage0 addSubUMXView:_label2];

// --label3
    _label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.5019608",
                          @"type":@"multiline",
                          @"txt_g":@"0.5019608",
                          @"id":@"label3",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#808080",
                          @"heightwrap":@"80.0",
                          @"font-size":@"14",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.5019608",
                          @"margin-top":@"5",
                          @"valign":@"top",@"value":@"进入快乐学->"主页"->轻触右上角图标或进入快乐学->"主页"->切换到下方签到页->轻触右上角图标（轻触下方签到、补签按钮）。"}];
    [(UMLayoutView*)_viewPage0 addSubUMXView:_label3];

// --label4
    _label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"font_size":@"16",
                          @"txt_g":@"1.0",
                          @"id":@"label4",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#f7931e",
                          @"font-size":@"16",
                          @"border-right-width":@"1",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"padding-left":@"5",
                          @"halign":@"left",
                          @"border-radius":@"5",
                          @"width":@"fill",
                          @"txt_r":@"1.0",
                          @"margin-bottom":@"5",
                          @"bg_r":@"0.96862745",
                          @"border-bottom-color":@"#f7931e",
                          @"border-top-width":@"1",
                          @"border-left-color":@"#f7931e",
                          @"border-top-color":@"#f7931e",
                          @"color":@"#FFFFFF",
                          @"heightwrap":@"23.0",
                          @"background":@"#f7931e",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"bg_b":@"0.11764706",
                          @"margin-top":@"20",
                          @"valign":@"center",
                          @"bg_g":@"0.5764706",@"value":@"2、如何进行注册/登录？"}];
    [(UMLayoutView*)_viewPage0 addSubUMXView:_label4];

// --label5
    _label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.5019608",
                          @"type":@"multiline",
                          @"txt_g":@"0.5019608",
                          @"id":@"label5",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#808080",
                          @"heightwrap":@"80.0",
                          @"font-size":@"14",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.5019608",
                          @"margin-top":@"5",
                          @"valign":@"top",@"value":@"首次进入快乐学->弹出注册页面->下一步->选择相关信息->完成即可完成注册；非首次进入快乐学会自动登录。"}];
    [(UMLayoutView*)_viewPage0 addSubUMXView:_label5];

// --label6
    _label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"border-bottom-width":@"1",
                          @"font_size":@"16",
                          @"txt_g":@"1.0",
                          @"id":@"label6",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"border-right-color":@"#f7931e",
                          @"font-size":@"16",
                          @"border-right-width":@"1",
                          @"txt_b":@"1.0",
                          @"border-left-width":@"1",
                          @"padding-left":@"5",
                          @"halign":@"left",
                          @"border-radius":@"5",
                          @"width":@"fill",
                          @"txt_r":@"1.0",
                          @"margin-bottom":@"5",
                          @"bg_r":@"0.96862745",
                          @"border-bottom-color":@"#f7931e",
                          @"border-top-width":@"1",
                          @"border-left-color":@"#f7931e",
                          @"border-top-color":@"#f7931e",
                          @"color":@"#FFFFFF",
                          @"heightwrap":@"23.0",
                          @"background":@"#f7931e",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"bg_b":@"0.11764706",
                          @"margin-top":@"20",
                          @"valign":@"center",
                          @"bg_g":@"0.5764706",@"value":@"3、如何进行练习/模拟考试？"}];
    [(UMLayoutView*)_viewPage0 addSubUMXView:_label6];

// --label7
    _label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.5019608",
                          @"type":@"multiline",
                          @"txt_g":@"0.5019608",
                          @"id":@"label7",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#808080",
                          @"heightwrap":@"80.0",
                          @"font-size":@"14",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.5019608",
                          @"margin-top":@"5",
                          @"valign":@"top",@"value":@"进入快乐学->选择章节练习或随机练习，即可进行练习；进入快乐学->选择模拟考试，即可进行模拟考试。"}];
    [(UMLayoutView*)_viewPage0 addSubUMXView:_label7];

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
[args setInvoke:[self getInvokeInfo:@"button0_onclick" method:@"this.closeSystemHelp()" sender:sender]];

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
