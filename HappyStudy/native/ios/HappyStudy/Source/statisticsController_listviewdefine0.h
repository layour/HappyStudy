
#import <UMIOSControls/LHTableViewCell.h>
#import <UMIOSControls/UMIOSControls.h>
#import <UMIOSControls/LHRefreshTableView.h>
#import <UMIOSControls/LHGroup.h>

@interface statisticsController_listviewdefine0_tableViewCell:LHTableViewCell

@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;







@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;




@property(nonatomic,strong)NSString *cellHeight;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* label3;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* label5;

@property (nonatomic,strong) UMView* label6;

@property (nonatomic,strong) UMView* label7;





@end


@interface statisticsController_listviewdefine0_group : LHGroup

@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property(nonatomic,strong)UMView * groupLayout;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* label3;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* label5;

@property (nonatomic,strong) UMView* label6;

@property (nonatomic,strong) UMView* label7;




@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;







@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;



@end


@interface statisticsController_listviewdefine0_cellHeight : NSObject
@property (strong) UMLayoutView* panel0;
- (UMLayoutView*)panel0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* panel1;
- (UMLayoutView*)panel1 BV_OBJC_METHOD_FAMILY_NONE;







@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;



@property(nonatomic,strong)UMView * groupLayout;
@property(nonatomic,strong)NSString *cellHeight;
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* label3;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* label5;

@property (nonatomic,strong) UMView* label6;

@property (nonatomic,strong) UMView* label7;




-(void)getCellHeightByIndex:(NSString *)index;

-(void)getSectionHeightByIndex;

@property(nonatomic,strong)NSMutableDictionary *dataBindGroup;//���灞����
@property(nonatomic,strong)UMBaseViewController *parentController;
@property(nonatomic,strong)UMEntityContext *ctx;
@property(nonatomic,strong)UMView *container;

-(void)addSubview:(UIView *)view;

-(UMEntityContext *)getContext;

-(NSMutableDictionary *) getBindGroup;
@end
