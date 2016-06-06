//
//  ViewController.m
//  SEL
//
//  Created by Czing on 15/10/28.
//  Copyright © 2015年 Czing. All rights reserved.
//

#import "ViewController.h"
#import "ForthViewController.h"
@interface ViewController ()
{
    ForthViewController *sec;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"SEL";
    
    sec.Object = self;
    sec.sel = @selector(pushviewController);
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn setFrame:CGRectMake(100, 100, 100, 100)];
    [btn setBackgroundColor:[UIColor darkTextColor]];
    
    [btn addTarget:self action:@selector(reciecveMes) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
       
    
}
-(void)pushviewController
{

    NSLog(@"ddddd");

}
-(void)reciecveMes
{



    sec =[[ForthViewController alloc]init];
    [self.navigationController  pushViewController:sec animated:YES];

}


@end
