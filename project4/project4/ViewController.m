//
//  ViewController.m
//  project4
//
//  Created by Alexander Herrera on 11/11/12.
//  Copyright (c) 2012 Alexander Herrera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
//Set background color of the page:
	self.view.backgroundColor = [UIColor whiteColor];
//UILabel:
	userNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 15.0f, 85.0f, 35.0f)];
	if (userNameLabel != nil)
	{
		userNameLabel.text = @"Username:";
		//userNameLabel.backgroundColor = [UIColor greenColor];
	}
	[self.view addSubview:userNameLabel];
//UILabel Reminder for the user to input a username:
	pleaseEnterUserName = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 80.0f)];
	if (pleaseEnterUserName != nil)
	{
		pleaseEnterUserName.text = @"Please Enter Username";
		pleaseEnterUserName.backgroundColor = [UIColor lightGrayColor];
		pleaseEnterUserName.textColor = [UIColor blueColor];
		pleaseEnterUserName.textAlignment = NSTextAlignmentCenter;
		[self.view addSubview:pleaseEnterUserName];
	}
	
//UITextField:
	userNameTextField = [[UITextField alloc]initWithFrame:CGRectMake(105.0f, 15.0f, 205.0f, 35.0f)];
	if (userNameTextField != nil)
	{
		userNameTextField.borderStyle = UITextBorderStyleRoundedRect;
		[self.view addSubview:userNameTextField];
	}
//Rounded Rectangle UIButton:
	logInBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	if (logInBtn != nil)
	{
		logInBtn.frame = CGRectMake(240.0f, 60.0f, 70.0f, 25.0f);
		[logInBtn setTitle:@"Login" forState:UIControlStateNormal];
		[logInBtn addTarget:self action:@selector(clickByUser:) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:logInBtn];
	}

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)clickByUser:(UIButton *)btnActions
{
	//loginTextVal = userNameTextField.text;
	//NSLog((NSString*)loginTextVal);
	NSString * newText = @"User: %f, %f, %f, %f", [newText frame.origin.x] [newText frame].origin.y], [[newText frame].size.width], [[newText frame].size.height];
	if (userNameTextField.text == nil)
	{
		pleaseEnterUserName.text = @"Username cannot be empty";
	} else
	  {
		[self.view addSubview:(UIView*)newText];
		//[self.view addSubview: @"User: %@ has been logged in", userNameTextField.text];
	  }

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
