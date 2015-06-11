#import "opiniondetailController_listviewdefine0.h"
@interface opiniondetailController_listviewdefine0_tableViewCell ()
{
	
}
@end
@implementation opiniondetailController_listviewdefine0_tableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCtx:(UMEntityContext *)_ctx withContainer:(UMView *)container
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       NSArray *reuseIdentifierArr = [reuseIdentifier componentsSeparatedByString:@"_"];
       NSInteger index = [reuseIdentifierArr[reuseIdentifierArr.count-1] integerValue];
        switch (index) {
          case 0:
{
    _panel0 = [[UMLayoutView alloc] init];
    _panel0.controlId = @"panel0";
    _panel0.layoutType = Layout_vbox;
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
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"60",@"height",
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
    [(UMLayoutView*)_panel0 addSubUMView:_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"content",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"type":@"multiline",
                          @"txt_g":@"0.0",
                          @"id":@"label1",
                          @"margin-right":@"10",
                          @"height":@"0",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"margin-top":@"5",
                          @"valign":@"top",@"value":@"内容"}];
    [(UMLayoutView*)_panel1 addSubUMXView:_label1];

// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"time",
                          @"halign":@"right",
                          @"width":@"fill",
                          @"font_size":@"10",
                          @"txt_r":@"0.7529412",
                          @"margin-bottom":@"5",
                          @"txt_g":@"0.7529412",
                          @"id":@"label2",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#c0c0c0",
                          @"heightwrap":@"15.0",
                          @"font-size":@"10",
                          @"margin-left":@"10",
                          @"font-family":@"default",
                          @"txt_b":@"0.7529412",
                          @"valign":@"center",@"value":@"2015-05月-29 15:31:00"}];
    [(UMLayoutView*)_panel1 addSubUMXView:_label2];

    _panel2 = [[UMLayoutView alloc] init];
    _panel2.controlId = @"panel2";
    _panel2.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel2];
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
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"1",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:0.78039217 green:0.78039217 blue:0.78039217 alpha:1],@"backgroundColor",
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




[self.contentView addSubview:_panel0.content];
self.cellHeight = @"60";
break;
}

          default:
             break;
        }
  
    }
    return self;
}
-(void)bindAll:(UMEntityContext *)_ctx{

	[self umcontrol:_label1 controlid:@"label1" bindfield:@"content"];
[self umcontrol:_label2 controlid:@"label2" bindfield:@"time"];

    [self bindAll];
    
}    
-(void)setWgtFrame:(UMLayoutView *)layout{

    self.umtableView.tableView.currCellUmview = layout;
    self.layoutView = layout;
	if(layout.isWidthFill)
	{
		CGRect rect = layout.frame;
    	rect.size.width = CGRectGetWidth(self.umtableView.frame);
//    rect.size.width = self.frame.size.width;
    	layout.frame = rect;
    
    	layout.isWidthFill = NO;
    }
}
-(void)configCell:(NSInteger)index andCtx:(UMEntityContext *)_ctx
{
     switch (index) {
     case 0:
{
[self setWgtFrame:_panel0];
[self bindAll:_ctx];
[_panel0 adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface opiniondetailController_listviewdefine0_group ()
{
	
}
@end
@implementation opiniondetailController_listviewdefine0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_label1 controlid:@"label1" bindfield:@"content"];
[self umcontrol:_label2 controlid:@"label2" bindfield:@"time"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface opiniondetailController_listviewdefine0_cellHeight ()
{
	
}
@end
@implementation opiniondetailController_listviewdefine0_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
    case 0:
self.cellHeight = @"60";
break;

    default:
                break;
    }
}
-(void)getSectionHeightByIndex
{
	

}

-(void)addSubview:(UIView *)view
{
    
}
-(void)addSubUMXView:(UMView *)view
{
    
}
-(UMEntityContext *)getContext
{
    
    return self.ctx;
}

-(NSMutableDictionary *) getBindGroup
{
    return self.dataBindGroup;
}
@end
