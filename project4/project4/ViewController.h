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
	UITextField * userNameTextField;
	UIButton * logInBtn;
	UITextField * loginTextVal;
	
}
//Functions:
-(void)clickByUser:(UIButton*)btnActions;
@end
