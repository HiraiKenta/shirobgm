//
//  FirstViewController.m
//  siro100BGM
//
//  Created by ビザンコムマック１１ on 2014/11/16.
//  Copyright (c) 2014年 mycompany. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController{
    Music *BGM;
    BOOL joukyou;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tabBarController.delegate = self;
    BGM  = [[Music alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tabBarController:
(UITabBarController*)tabBarController
didSelectViewController:
(UIViewController*)viewController{
    if(viewController == self){
        if(joukyou){
            [BGM BGMStart1];
            joukyou = NO;
        }else{
            [BGM BGMStart2];
            joukyou = YES;
        }
    }else{
        [BGM BGMStop];
        [BGM koukaon];
    }
}

@end
