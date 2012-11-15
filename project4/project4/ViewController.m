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
#define BUTTON_VALUE_TWO 2

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad
{
//Set background color of the page:
	self.view.backgroundColor = [UIColor whiteColor];
//UILabel of the username:
	userNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 5.0f, 85.0f, 35.0f)];
	if (userNameLabel != nil)
	{
		userNameLabel.text = @"Username:";
		[self.view addSubview:userNameLabel];
	}
	
//UILabel Reminder for the user to input a username:
	//First text to be display for the user:
		pleaseEnterUserName = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 70.0f)];
		if (pleaseEnterUserName != nil)
		{
			pleaseEnterUserName.text = @"Please Enter Username";
			pleaseEnterUserName.backgroundColor = [UIColor lightGrayColor];
			pleaseEnterUserName.textColor = [UIColor blueColor];
			pleaseEnterUserName.textAlignment = NSTextAlignmentCenter;
			[self.view addSubview:pleaseEnterUserName];
		}
	//Text user see's when username not inputted:
		userText = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 100.0f, 20.0f, 80.0f)];
		userText.text = @"User:";
		userText.backgroundColor = [UIColor greenColor];
//UITextField for the text to be inpuuted:
	userNameInputTextField = [[UITextField alloc]initWithFrame:CGRectMake(105.0f, 5.0f, 205.0f, 35.0f)];
	if (userNameInputTextField != nil)
	{
		userNameInputTextField.borderStyle = UITextBorderStyleRoundedRect;
		[pleaseEnterUserName resignFirstResponder];
		[self.view addSubview:userNameInputTextField];
	}
//Rounded Rectangle UIButton for the Login button:
	logInBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	if (logInBtn != nil)
	{
		logInBtn.frame = CGRectMake(235.0f, 50.0f, 75.0f, 25.0f);
	//Using the value already defined of 0:
		logInBtn.tag = BUTTON_VALUE_ZERO;
		[logInBtn setTitle:@"Login" forState:UIControlStateNormal];
		[logInBtn addTarget:self action:@selector(clickByUser:) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:logInBtn];
	}
//Show Date UIButton:
	showDateBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	if (showDateBtn != nil)
	{
		showDateBtn.frame = CGRectMake(5.0f, 235.0f, 100.0f, 40.0f);
	//Using the value already defined of 1:
		showDateBtn.tag = BUTTON_VALUE_ONE;
		[showDateBtn setTitle:@"Show Date" forState:UIControlStateNormal];
		[showDateBtn addTarget:self action:@selector(clickByUser:) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:showDateBtn];
	}
//Information button section:
	infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
	if (infoButton != nil)
	{
		infoButton.frame = CGRectMake(10.0f, 335.0f, 25.0f, 25.0f);
		//Using the value already defined of 2:
		infoButton.tag = BUTTON_VALUE_TWO;
		[infoButton addTarget:self action:@selector(clickByUser:) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:infoButton];
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
	//This case happenes when the Login button is clicked, which the tag value is 0:
		case BUTTON_VALUE_ZERO:
		{
			usernameText = [userNameInputTextField text];
		//When the input field is empty:
			if (usernameText == nil)
			{
				pleaseEnterUserName.text = @"Username cannot be empty";
			} else
			  {
			//Input field not empty:
				textString = @"has been logged in";
				pleaseEnterUserName.text = [NSString stringWithFormat:@"%@ %@ %@", userText.text, usernameText, textString];
			  }
			  break;
		}
	//This case happenes when the Show Date button is clicked, which the tag value is 1:
		case BUTTON_VALUE_ONE:
		{
			dateShow = [NSDate date];
			formatDate = [[NSDateFormatter alloc]init];
			if (formatDate != nil)
			{
			//Displays the Date & Time:
				[formatDate setDateStyle:NSDateFormatterLongStyle];
			//Displays the Time Zone in full length:
				[formatDate setTimeStyle:NSDateFormatterFullStyle];
				labelDateString= [formatDate stringFromDate:dateShow];
				if (labelDateString != nil)
				{
				//UI Alert to display Date, Time, & Time Zone:
					dateAlert = [[UIAlertView alloc]initWithTitle:@"Date" message:labelDateString delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
					[dateAlert show];
				}
			}
			break;
		}
	//This case happenes when the Show Date button is clicked, which the tag value is 1:
		case BUTTON_VALUE_TWO:
		{
			infoLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 375.0f, 360.0f, 50.0f)];
			if (infoLabel != nil)
			{
			//My text information:
				infoLabel.text = @"This application was created by Alexander Herrera.";
				infoLabel.numberOfLines = 2;
				infoLabel.textColor = [UIColor redColor];
				[self.view addSubview:infoLabel];
			}
			break;
		}
		default:
		{
			break;
		}
	}
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	noticedTap = [[event allTouches]anyObject];
	[userNameInputTextField resignFirstResponder];
}
@end
