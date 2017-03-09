//
//  ViewController.m
//  testProject
//
//  Created by Admin on 1/27/17.
//  Copyright © 2017 Melborne Aloj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    bool menuShowing;
}
@property (weak, nonatomic) IBOutlet UIView *vWMenuView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *cSLeadingConstarint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    menuShowing = false; 
    
    //adding drop shadow
    _vWMenuView.layer.shadowOpacity = 1;
    _vWMenuView.layer.shadowRadius = 5;
    

}

- (IBAction)openMenu:(id)sender {
    
    //changing leading constraint of the sliderView
    if(menuShowing){
    _cSLeadingConstarint.constant = -266;
    }else{
    _cSLeadingConstarint.constant = 0;
        
    }
    menuShowing = !menuShowing;
    
    
    //layoutIfNeeded is animatable, henced used here
    [UIView animateWithDuration:0.3
                     animations:^{
                         [self.view layoutIfNeeded]; // Called on parent view
                     }];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
