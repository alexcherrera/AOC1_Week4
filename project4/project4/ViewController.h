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
	UILabel * labeDateUI;
	NSString * userNameTitle;
	NSString * usernameText;
	NSString * textString;
	UITextField * userNameTextField;
	UIButton * logInBtn;
	UIButton * showDateBtn;
	UITextField * loginTextVal;
	NSDate * dateShow;
	NSDateFormatter * formatDate;
	
}
//Functions:
-(void)clickByUser;
-(void)displayAlert:info1 displayAlert:info2;
@end
