//
//  ViewController.m
//  project4
//
//  Created by Alexander Herrera on 11/11/12.
//  Copyright (c) 2012 Alexander Herrera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

#define BUTTON_VALUE_ZERO 0
#define BUTTON_VALUE_ONE 1

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad
{
//Set background color of the page:
	self.view.backgroundColor = [UIColor whiteColor];
//UILabel:
	userNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 5.0f, 85.0f, 35.0f)];
	if (userNameLabel != nil)
	{
		userNameLabel.text = @"Username:";
		//userNameLabel.backgroundColor = [UIColor greenColor];
		[self.view addSubview:userNameLabel];
	}
	
//UILabel Reminder for the user to input a username:
	pleaseEnterUserName = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 80.0f)];
	userText = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 100.0f, 20.0f, 80.0f)];
	userText.text = @"User:";
	userText.backgroundColor = [UIColor greenColor];
	if (pleaseEnterUserName != nil)
	{
		pleaseEnterUserName.text = @"Please Enter Username";
		pleaseEnterUserName.backgroundColor = [UIColor lightGrayColor];
		pleaseEnterUserName.textColor = [UIColor blueColor];
		pleaseEnterUserName.textAlignment = NSTextAlignmentCenter;
		[self.view addSubview:pleaseEnterUserName];
	}

//UITextField:
	userNameTextField = [[UITextField alloc]initWithFrame:CGRectMake(105.0f, 10.0f, 205.0f, 35.0f)];
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
		logInBtn.tag = BUTTON_VALUE_ZERO;
		[logInBtn setTitle:@"Login" forState:UIControlStateNormal];
		[logInBtn addTarget:self action:@selector(clickByUser:) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:logInBtn];
	}
//Show Date UIButton:
	showDateBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	if (showDateBtn != nil)
	{
		showDateBtn.frame = CGRectMake(10.0f, 250.0f, 100.0f, 40.0f);
		showDateBtn.tag = BUTTON_VALUE_ONE;
		[showDateBtn setTitle:@"Show Date" forState:UIControlStateNormal];
		[showDateBtn addTarget:self action:@selector(clickByUser:) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:showDateBtn];
	}
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)clickByUser:(UIButton*)buttonInfo
{
	switch (buttonInfo.tag)
	{
		case BUTTON_VALUE_ZERO:
		{
			usernameText = [userNameTextField text];
			if (usernameText == nil)
			{
				pleaseEnterUserName.text = @"Username cannot be empty";
			} else
			  {
				textString = @"has been logged in";
				pleaseEnterUserName.text = [NSString stringWithFormat:@"%@ %@ %@", userText.text, usernameText, textString];
			  }
			  break;
		}
		case BUTTON_VALUE_ONE:
		{
			dateShow = [NSDate date];
			formatDate = [[NSDateFormatter alloc]init];
			if (formatDate != nil)
			{
				[formatDate setDateStyle:NSDateFormatterLongStyle];
				[formatDate setTimeStyle:NSDateFormatterFullStyle];
				labelDateString= [formatDate stringFromDate:dateShow];
				if (labelDateString != nil)
				{
					dateAlert = [[UIAlertView alloc]initWithTitle:@"Date" message:labelDateString delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
					[dateAlert show];
				}
			}
			break;
		}
		default:
		{
			break;
		}
	}
}

@end
