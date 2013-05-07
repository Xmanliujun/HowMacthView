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
    UIButton * xButton;
    UIButton * jButton;
    UIButton * yButton;
    UIButton * zButton;
    
    UIButton * zhiFuButton;
    
    UITextField * codeNumText;
    UITextField * certNameText;
    UITextField * certCodeText;
    
    UILabel * bankLabel;
    UILabel * zhengLabel;
    UILabel * label5;
    UILabel * label4;
    UILabel * label3;
    UILabel * label2;
    UILabel * label1;
    
    
    UIImageView * imageView1;
    UIImageView * imageView2;
    
    UITableView * myTableViewBank;
    
    
    
    
}

@property (nonatomic,retain) NSMutableArray * jArray;
@property (nonatomic,retain) NSMutableArray * xyArray;
@property (nonatomic,retain) NSDictionary * jDict;
@property (nonatomic,retain) NSDictionary * xDict;
@property (nonatomic,retain) NSMutableArray * numArray;

-(id)initWithArray:(NSMutableArray *)array;
- (void)moveLoginView:(UIView *)loginView setFrame:(CGRect)rect;




@end
