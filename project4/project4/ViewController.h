//
//  ViewController.h
//  project4
//
//  Created by Alexander Herrera on 11/11/12.
//  Copyright (c) 2012 Alexander Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
//Variables:
	UILabel * userNameLabel;
	UILabel * pleaseEnterUserName;
	UILabel * userText;
	UILabel * labelDateUI;
	UILabel * infoLabel;
	UIButton * logInBtn;
	UIButton * showDateBtn;
	UIButton * infoButton;
	UITextField * userNameInputTextField;
	UITextField * loginTextVal;
	UIAlertView * dateAlert;
	NSString * userNameTitle;
	NSString * usernameText;
	NSString * textString;
	NSString * labelDateString;
	NSString * stringInfoLabel;
	NSDate * dateShow;
	NSDateFormatter * formatDate;
	UITouch * noticedTap;
}
//Functions:
-(void)clickByUser:(UIButton*)buttonInfo;
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
@end
