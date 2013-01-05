//
//  ViewController.m
//  Test_Local
//
//  Created by wangwb on 12-12-27.
//  Copyright (c) 2012年 wangwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _Name.text = NSLocalizedString(@"Name", @"name-");
    NSLog(@"Name:");
    NSLog(NSLocalizedString(@"Name", @"name-"));
    NSLog(NSLocalizedString(@"hello", @"helloworld-"));
    NSLog(NSLocalizedString(@"helloworld", @"helloworld-"));
    
    UILabel*label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    
    [label setText: NSLocalizedString(@"welcome", nil)];
    
    [label setFont:[UIFont fontWithName:@"Helvetica"size:14]];
    
    [self.view addSubview:label];
    
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languages objectAtIndex:0];
    NSLog ( @"%@" , currentLanguage);
    
    NSUserDefaults *defaults = [ NSUserDefaults standardUserDefaults ];
    NSArray *_languages = [defaults objectForKey : @"AppleLanguages" ];
    NSLog ( @"%@" , _languages);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
