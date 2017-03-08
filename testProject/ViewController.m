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
    _vWMenuView.layer.shadowOpacity = 1;
    
    _vWMenuView.layer.shadowRadius = 5;
    
    NSArray *myarray = [NSArray arrayWithObjects:@"One",@"Two",@"Three", nil];
    
    [myarray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"object at index %lu is %@",(unsigned long)idx,obj);
    }];
}

- (IBAction)openMenu:(id)sender {
    
    if(menuShowing){
    _cSLeadingConstarint.constant = -266;
    }else{
    _cSLeadingConstarint.constant = 0;
        
    }
    menuShowing = !menuShowing;
    
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
