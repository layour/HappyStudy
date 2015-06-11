//
//  viewController.h
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//
#include <UMIOSControls/RoyalBlue.h>
#import <UMIOSControls/UMIOSControls.h>
//#import "UMContainer.h"
#import "AppDelegate.h"
















@interface registerController:UMBaseViewController

@property (nonatomic,assign) BOOL navBarHidden;
@property (nonatomic,weak) UIViewController* parentController;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary *contextDictionary;
@property (nonatomic,readonly,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMLayoutView*	Register;
- (UMLayoutView*)Register BV_OBJC_METHOD_FAMILY_NONE;
@property (strong) UMLayoutView* viewPage0;
- (UMLayoutView*)viewPage0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* navigatorbar0;
- (UMLayoutView*)navigatorbar0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* wloginpanel;
- (UMLayoutView*)wloginpanel BV_OBJC_METHOD_FAMILY_NONE;





@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;










@property (nonatomic,strong)UMEntityContext* context;
@property (nonatomic,strong)UMEntityContext* ctx;



@property (nonatomic,strong) UMView* button0;

@property (nonatomic,strong) UMView* label0;

@property (nonatomic,strong) UMView* wmailtext;

@property (nonatomic,strong) UMView* wusertext;


@property (nonatomic,strong) UMView* wpasstext;

@property (nonatomic,strong) UMView* textbox2;

@property (nonatomic,strong) UMView* textbox0;

@property (nonatomic,strong) UMView* wregisterbutton;

@property (nonatomic,strong) UMView* togglebuttongroup0;

@property (nonatomic,strong) UMView* togglebutton0;

@property (nonatomic,strong) UMView* togglebutton1;


- (void)dataBind:(NSString*)data;
- (id)initWithParentCtl:(UIViewController*)parentCtl;
//- (void)dispacherEventToWebview:(NSString*)params;
@end
