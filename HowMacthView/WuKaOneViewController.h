//
//  WuKaOneViewController.h
//  Flights
//
//  Created by XmL on 13-5-7.
//  Copyright (c) 2013年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WuKaOneViewController : UIViewController
<UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray * jArray;
    NSMutableArray * xyArray;
    NSDictionary * jDict;
    NSDictionary * xDict;
    
    NSMutableArray * numArray;
    
    
    
    UIView * oneView;
    UIView * twoView;
    UIView * threeView;
    
    UIButton * xButton;
    UIButton * jButton;
    UIButton * yButton;
    UIButton * zButton;
    UIButton * vButton;
    
    UIButton * vzButton;
    UIButton * vzButton2;
    UIButton * vzButton3;
    
    UIButton * zhiFuButton;
    
    UITextField * codeNumText;
    UITextField * certNameText;
    UITextField * certCodeText;
    UITextField * certPhoneText;
    
    UILabel * bankLabel;
    UILabel * zhengLabel;
    UILabel * label6;
    UILabel * label5;
    UILabel * label4;
    UILabel * label3;
    UILabel * label2;
    UILabel * label1;
    
    
    UIImageView * imageView1;
    UIImageView * imageView2;
    
    UITableView * myTableViewBank;
    UITableView * jMytableViewBank;
    
    
    
    NSString * stringBank;
    NSString * bankNameString;
    NSString * jString;
    NSString * xString;
    NSString * sZhString;
    
    NSString * codeNumString;
    NSString * certNameString;
    NSString * certOnString;
    NSString * certPhoneString;
    
}
@property (nonatomic,retain) NSString * certPhoneString;
@property (nonatomic,retain) NSString * bankNameString;
@property (nonatomic,retain) NSString * codeNumString;
@property (nonatomic,retain) NSString * certNameString;
@property (nonatomic,retain) NSString * certOnString;

@property (nonatomic,retain) NSString * stringBank;
@property (nonatomic,retain) NSString * jString;
@property (nonatomic,retain) NSString * xString;
@property (nonatomic,retain) NSString * sZhString;

@property (nonatomic,retain) NSMutableArray * jArray;
@property (nonatomic,retain) NSMutableArray * xyArray;
@property (nonatomic,retain) NSDictionary * jDict;
@property (nonatomic,retain) NSDictionary * xDict;
@property (nonatomic,retain) NSMutableArray * numArray;

-(id)initWithArray:(NSMutableArray *)array;
- (void)moveLoginView:(UIView *)loginView setFrame:(CGRect)rect;




@end
