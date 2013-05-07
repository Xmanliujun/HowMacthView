//
//  WuKaOneViewController.m
//  Flights
//
//  Created by XmL on 13-5-7.
//  Copyright (c) 2013年 mac. All rights reserved.
//

#import "WuKaOneViewController.h"

@interface WuKaOneViewController ()


@end

@implementation WuKaOneViewController

@synthesize jArray,xyArray,jDict,xDict,numArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithArray:(NSMutableArray *)array
{
    if (self = [super init]) {
        self.numArray = [NSMutableArray arrayWithArray:array];
    }

    return self;

}
- (void)moveLoginView:(UIView *)loginView setFrame:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.2];
    [loginView setFrame:rect];
    [UIView setAnimationDelegate:self];
    [UIView commitAnimations];
}
-(void)yButtonOne:(UIButton *)btn
{

    NSLog(@"yButtonOne");
    
    CGRect rect = self.view.bounds;
    [self moveLoginView:twoView setFrame:CGRectMake(0, 0, 320, rect.size.height)];
    
    


}

-(void)zhengButton:(UIButton *)btn
{

    NSLog(@"zhengButton");
    CGRect rect = self.view.bounds;
    [self moveLoginView:oneView setFrame:CGRectMake(0, rect.size.height/2-40, 320, rect.size.height/2 +40)];
    

}

-(void)xButtonOne:(UIButton *)btn
{

    NSLog(@"xButtonOne");
    

}

-(void)jButtonOne:(UIButton * )btn
{

    NSLog(@"jButtonOne");


}


-(void)zhiFuButtonOne:(UIButton *)btn
{

    NSLog(@"zhiFuButtonOne");


}

-(void)fristView
{
    label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(0, 10, 100, 30);
    label1.text = @"发卡行:";
    label1.textAlignment = NSTextAlignmentCenter;
    label1.textColor = [UIColor blackColor];
    label1.font = [UIFont fontWithName:@"Arial" size:20];
    [self.view addSubview:label1];
    [label1 release];
    
    yButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    yButton.frame = CGRectMake(100, 5, 210, 40);
    [yButton setTitle:nil forState:UIControlStateNormal];
    [yButton addTarget:self action:@selector(yButtonOne:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:yButton];
    
    bankLabel = [[UILabel alloc] init];
    bankLabel.frame = CGRectMake(0, 0, 180, 40);
    bankLabel.text = @"请选择银行";
    bankLabel.textAlignment = NSTextAlignmentCenter;
    bankLabel.textColor = [UIColor grayColor];
    bankLabel.font = [UIFont fontWithName:@"Arial" size:20];
    [yButton addSubview:bankLabel];
    
    label2 = [[UILabel alloc] init];
    label2.frame = CGRectMake(0, 60, 100, 30);
    label2.text = @"卡 号:";
    label2.textAlignment = NSTextAlignmentCenter;
    label2.textColor = [UIColor blackColor];
    label2.font = [UIFont fontWithName:@"Arial" size:20];
    [self.view addSubview:label2];
    [label2 release];
    
    codeNumText = [[UITextField alloc] init];
    codeNumText.frame = CGRectMake(100, 55, 215, 40);
    codeNumText.placeholder = @"请输入银行卡号!";
    codeNumText.borderStyle = UITextBorderStyleRoundedRect;
    codeNumText.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;
    codeNumText.keyboardType = UIKeyboardTypeNamePhonePad;
    codeNumText.returnKeyType = UIReturnKeyDone;
    codeNumText.tag = 1111;
    codeNumText.delegate = self;
    [self.view addSubview:codeNumText];
    
    
    xButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    xButton.frame = CGRectMake(40, 110, 80, 40);
    [xButton setImage:nil forState:UIControlStateNormal];
    [xButton addTarget:self action:@selector(xButtonOne:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:xButton];
    
    jButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    jButton.frame = CGRectMake(200, 110, 80, 40);
    [jButton setImage:nil forState:UIControlStateNormal];
    [jButton addTarget:self action:@selector(jButtonOne:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jButton];
    
    
    
    label3 = [[UILabel alloc] init];
    label3.frame = CGRectMake(0, 180, 100, 30);
    label3.text = @"证件类型:";
    label3.textAlignment = NSTextAlignmentCenter;
    label3.textColor = [UIColor blackColor];
    label3.font = [UIFont fontWithName:@"Arial" size:20];
    [self.view addSubview:label3];
    [label3 release];
    
    zButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    zButton.frame = CGRectMake(100, 175, 210, 40);
    [zButton setTitle:nil forState:UIControlStateNormal];
    [zButton addTarget:self action:@selector(zhengButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:zButton];
    
    zhengLabel = [[UILabel alloc] init];
    zhengLabel.frame = CGRectMake(0, 0, 180, 40);
    zhengLabel.text = @"请选择证件";
    zhengLabel.textAlignment = NSTextAlignmentCenter;
    zhengLabel.textColor = [UIColor grayColor];
    zhengLabel.font = [UIFont fontWithName:@"Arial" size:20];
    [zButton addSubview:zhengLabel];
    
    label4 = [[UILabel alloc] init];
    label4.frame = CGRectMake(0, 240, 100, 30);
    label4.text = @"持 卡 人:";
    label4.textAlignment = NSTextAlignmentCenter;
    label4.textColor = [UIColor blackColor];
    label4.font = [UIFont fontWithName:@"Arial" size:20];
    [self.view addSubview:label4];
    [label4 release];
    
    certNameText = [[UITextField alloc] init];
    certNameText.frame = CGRectMake(100, 235, 210, 40);
    certNameText.placeholder = @"请输入持卡人姓名";
    certNameText.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    certNameText.borderStyle = UITextBorderStyleRoundedRect;
    certNameText.keyboardType = UIKeyboardTypeNamePhonePad;
    certNameText.returnKeyType = UIReturnKeyDone;
    certNameText.tag = 2222;
    certNameText.delegate = self;
    [self.view addSubview:certNameText];
    
    
    label5 = [[UILabel alloc] init];
    label5.frame = CGRectMake(0, 290, 100, 30);
    label5.text = @"证件号码:";
    label5.textAlignment = NSTextAlignmentCenter;
    label5.textColor = [UIColor blackColor];
    label5.font = [UIFont fontWithName:@"Arial" size:20];
    [self.view addSubview:label5];
    [label5 release];
    
    certCodeText = [[UITextField alloc] init];
    certCodeText.frame = CGRectMake(100, 285, 210, 40);
    certCodeText.placeholder = @"请输入证件号";
    certCodeText.borderStyle = UITextBorderStyleRoundedRect;
    certCodeText.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    certCodeText.keyboardType = UIKeyboardTypeNamePhonePad;
    certCodeText.returnKeyType = UIReturnKeyDone;
    certCodeText.tag = 3333;
    certCodeText.delegate = self;
    [self.view addSubview:certCodeText];
    
    
    
    zhiFuButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    zhiFuButton.frame = CGRectMake(120, 350, 80, 40);
    [zhiFuButton setImage:nil forState:UIControlStateNormal];
    [zhiFuButton addTarget:self action:@selector(zhiFuButtonOne:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:zhiFuButton];
    
    
    
    
    
    

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touch");
    [codeNumText resignFirstResponder];
    [certNameText resignFirstResponder];
    [certCodeText resignFirstResponder];
    
    
    label1.frame = CGRectMake(0, 10, 100, 30);
    yButton.frame = CGRectMake(100, 5, 210, 40);
    label2.frame = CGRectMake(0, 60, 100, 30);
    codeNumText.frame = CGRectMake(100, 55, 215, 40);
    xButton.frame = CGRectMake(40, 110, 80, 40);
    jButton.frame = CGRectMake(200, 110, 80, 40);
    label3.frame = CGRectMake(0, 180, 100, 30);
    zButton.frame = CGRectMake(100, 175, 210, 40);
    label4.frame = CGRectMake(0, 240, 100, 30);
    certNameText.frame = CGRectMake(100, 235, 210, 40);
    label5.frame = CGRectMake(0, 290, 100, 30);
    certCodeText.frame = CGRectMake(100, 285, 210, 40);

}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    NSLog(@"textfield");
    if (textField.tag == 2222) {
        
        label1.frame = CGRectMake(0, -100, 100, 30);
        yButton.frame = CGRectMake(100, -105, 210, 40);
        label2.frame = CGRectMake(0, 60, -200, 30);
        codeNumText.frame = CGRectMake(100, -255, 215, 40);
        xButton.frame = CGRectMake(40, -310, 80, 40);
        jButton.frame = CGRectMake(200, -310, 80, 40);
        label3.frame = CGRectMake(0, -380, 100, 30);
        zButton.frame = CGRectMake(100, -375, 210, 40);
        
        label4.frame = CGRectMake(0, 40, 100, 30);
        certNameText.frame = CGRectMake(100, 35, 210, 40);
        label5.frame = CGRectMake(0, 90, 100, 30);
        certCodeText.frame = CGRectMake(100, 85, 210, 40);

    }else if(textField.tag == 3333){
        
        label1.frame = CGRectMake(0, -100, 100, 30);
        yButton.frame = CGRectMake(100, -105, 210, 40);
        label2.frame = CGRectMake(0, 60, -200, 30);
        codeNumText.frame = CGRectMake(100, -255, 215, 40);
        xButton.frame = CGRectMake(40, -310, 80, 40);
        jButton.frame = CGRectMake(200, -310, 80, 40);
        label3.frame = CGRectMake(0, -380, 100, 30);
        zButton.frame = CGRectMake(100, -375, 210, 40);
        
        label4.frame = CGRectMake(0, 40, 100, 30);
        certNameText.frame = CGRectMake(100, 35, 210, 40);
        label5.frame = CGRectMake(0, 90, 100, 30);
        certCodeText.frame = CGRectMake(100, 85, 210, 40);
        
        
    
    }
        

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"return");
    [codeNumText resignFirstResponder];
    [certCodeText resignFirstResponder];
    [certNameText resignFirstResponder];
    
    label1.frame = CGRectMake(0, 10, 100, 30);
    yButton.frame = CGRectMake(100, 5, 210, 40);
    label2.frame = CGRectMake(0, 60, 100, 30);
    codeNumText.frame = CGRectMake(100, 55, 215, 40);
    xButton.frame = CGRectMake(40, 110, 80, 40);
    jButton.frame = CGRectMake(200, 110, 80, 40);
    label3.frame = CGRectMake(0, 180, 100, 30);
    zButton.frame = CGRectMake(100, 175, 210, 40);
    label4.frame = CGRectMake(0, 240, 100, 30);
    certNameText.frame = CGRectMake(100, 235, 210, 40);
    label5.frame = CGRectMake(0, 290, 100, 30);
    certCodeText.frame = CGRectMake(100, 285, 210, 40);
    
    return YES;
}

-(void)vButtonOne:(UIButton * )btn
{

    NSLog(@"vButtonOne");
    CGRect rect = self.view.bounds;
    [self moveLoginView:oneView setFrame:CGRectMake(0, rect.size.height, 320, rect.size.height/2)];
    
    
    

}
-(void)vzButtonOne:(UIButton *)btn
{

    NSLog(@"vzButtonOne");
    if (btn.tag == 101) {
        NSLog(@"tag 101");
        
    }else if (btn.tag == 102){
        NSLog(@"tag 102");
        
    }else if (btn.tag == 103){
        NSLog(@"tag 103");
    
    }

}

-(void)secView
{

    oneView = [[UIView alloc] init];
    CGRect rect = self.view.bounds;
    oneView.frame = CGRectMake(0, rect.size.height, 320, rect.size.height/2);
    oneView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:oneView];
    
    
    UIButton * vButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    vButton.frame = CGRectMake(5, 5, 50, 40);
    [vButton setImage:nil forState:UIControlStateNormal];
    [vButton addTarget:self action:@selector(vButtonOne:) forControlEvents:UIControlEventTouchUpInside];
    [oneView addSubview:vButton];
    
    UIButton * vzButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    vzButton.frame = CGRectMake(5, 50, 310, 60);
    [vzButton setImage:nil forState:UIControlStateNormal];
    [vzButton addTarget:self action:@selector(vzButtonOne:) forControlEvents:UIControlEventTouchUpInside];
    vzButton.tag = 101;
    [oneView addSubview:vzButton];
    
    UIButton * vzButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    vzButton2.frame = CGRectMake(5, 120, 310, 60);
    [vzButton2 setImage:nil forState:UIControlStateNormal];
    [vzButton2 addTarget:self action:@selector(vzButtonOne:) forControlEvents:UIControlEventTouchUpInside];
    vzButton2.tag = 102;
    [oneView addSubview:vzButton2];
    
    UIButton * vzButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    vzButton3.frame = CGRectMake(5, 190, 310, 60);
    [vzButton3 setImage:nil forState:UIControlStateNormal];
    [vzButton3 addTarget:self action:@selector(vzButtonOne:) forControlEvents:UIControlEventTouchUpInside];
    vzButton3.tag = 103;
    [oneView addSubview:vzButton3];
    
    
    

}
-(void)thTableView
{
    NSLog(@"thTableView");
    CGRect rect = self.view.bounds;
    twoView = [[UIView alloc] init];
    twoView.frame = CGRectMake(0, rect.size.height, 320, rect.size.height);
    twoView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:twoView];

    myTableViewBank = [[[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, twoView.bounds.size.height) style:UITableViewStylePlain] autorelease];
    myTableViewBank.dataSource = self;
    myTableViewBank.delegate = self;
    myTableViewBank.tag = 501;
    [twoView addSubview:myTableViewBank];
    

    
    
}

-(UITableViewCell * )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellID = @"cellTable";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (tableView.tag == 501) {
        
   
    
    if (cell== nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID] autorelease];
        
    }
 }
    return cell;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    if (tableView.tag == 501) {
        return [xyArray count];
    }
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    NSLog(@"cell is  here");

}

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title =  @"银行卡支付";
    
    jArray = [[NSMutableArray alloc] initWithCapacity:0];
    xyArray = [[NSMutableArray alloc] initWithCapacity:0];
   
    jDict = [NSDictionary dictionaryWithObjectsAndKeys:@"CITIC",@"中信银行",@"ABC",@"中国农业银行",@"BOC",@"中国银行",@"CEB",@"光大银行",@"ICBC",@"中国工商银行",@"CCB",@"中国建设银行",@"CMB",@"招商银行", nil];
    jArray = [NSMutableArray arrayWithObjects:@"中信银行",@"中国农业银行",@"中国银行",@"光大银行",@"中国工商银行",@"中国建设银行",@"招商银行", nil];
    
    xDict = [NSDictionary dictionaryWithObjectsAndKeys:@"ICBC",@"工商银行",@"BOC",@"中国银行",@"CCB",@"中国建设银行",@"CMB",@"招商银行",@"ABC",@"中国农业银行",@"SPABANK",@"平安银行",@"SDB",@"深圳发展银行",@"CEB",@"光大银行",@"GDB",@"广发银行",@"CIB",@"兴业银行",@"CMBC",@"民生银行",@"HXBANK",@"华夏银行",@"BJBANK",@"北京银行",@"SHRCB",@"上海农村商业银行",@"NXBANK",@"宁夏银行",@"BOD",@"东莞银行",@"NBBANK",@"宁波银行",@"DLB",@"大连银行",@"TCCB",@"天津银行",@"BHB",@"河北银行",@"JSBANK",@"江苏银行",@"HZCB",@"杭州银行",@"NJCB",@"南京银行",@"HSBANK",@"徽商银行",@"WJRCB",@"吴江农村商业银行",@"CRCBANK",@"重庆农商银行",@"SRBANK",@"上饶银行",@"GZB",@"赣州银行",@"ZJTLCB",@"浙江泰隆商业银行",@"CZCB",@"浙江稠州商业银行",@"GRCB",@"广州农村商业银行",@"CDRCB",@"成都农商银行",@"CSCB",@"长沙银行",@"BOJZ",@"锦州银行",@"HKB",@"汉口银行",@"NBYZ",@"鄞州银行",@"DYCCB",@"东营市商业银行",@"SDEB",@"顺德农商行",@"LZYH",@"兰州银行",@"BSB",@"包商银行",@"BOQH",@"青海银行",@"H3CB",@"内蒙古银行",@"JHBANK",@"金华银行", nil];
    
    xyArray = [NSMutableArray arrayWithObjects:@"工商银行",@"中国银行",@"中国建设银行",@"招商银行",@"中国农业银行",@"平安银行",@"深圳发展银行",@"光大银行",@"广发银行",@"兴业银行",@"民生银行",@"华夏银行",@"北京银行",@"上海农村商业银行",@"宁夏银行",@"东莞银行",@"宁波银行",@"大连银行",@"天津银行",@"河北银行",@"江苏银行",@"杭州银行",@"南京银行",@"徽商银行",@"吴江农村商业银行",@"重庆农商银行",@"上饶银行",@"赣州银行",@"浙江泰隆商业银行",@"浙江稠州商业银行",@"广州农村商业银行",@"成都农商银行",@"长沙银行",@"锦州银行",@"汉口银行",@"鄞州银行",@"东营市商业银行",@"顺德农商行",@"兰州银行",@"包商银行",@"青海银行",@"内蒙古银行",@"金华银行",nil];
    
    [self fristView];
    [self secView];
    [self thTableView];
    
    
}


-(void)dealloc
{
    
    
    
    [certCodeText release];
    [certNameText release];
    [codeNumText release];
    [bankLabel release];
    [zhengLabel release];
    [super dealloc];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
