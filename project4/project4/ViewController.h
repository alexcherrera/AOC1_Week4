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
	NSString * userNameTitle;
	NSString * usernameText;
	NSString * textString;
	UITextField * userNameTextField;
	UIButton * logInBtn;
	UIButton * showDateBtn;
	UITextField * loginTextVal;
	NSDate * dateShow;
	NSDateFormatter * formatDate;
	UIAlertView * dateAlert;
	NSString * labelDateString;
}
//Functions:
-(void)clickByUser:(UIButton*)buttonInfo;
@end
