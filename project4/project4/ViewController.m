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
//UITextField:
	userNameTextField = [[UITextField alloc]initWithFrame:CGRectMake(105.0f, 15.0f, 205.0f, 35.0f)];
	if (userNameTextField != nil)
	{
		userNameTextField.borderStyle = UITextBorderStyleRoundedRect;
		[self.view addSubview:userNameTextField];
	}
//Rounded Rectangle UIButton:
	logInBtn = [[UIButton alloc]initWithFrame:CGRectMake(140.0f, 50.0f, 40.0f, 30.0f)];
	

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
