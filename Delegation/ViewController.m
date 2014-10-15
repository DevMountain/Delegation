//
//  ViewController.m
//  Delegation
//
//  Created by Joshua Howland on 10/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "ViewController.h"
#import "DrawerView.h"

static const CGFloat drawerHeight = 75;

@interface ViewController () <DrawerViewDelegate>

@property (nonatomic, strong) IBOutlet UILabel *selectionLabel;
@property (nonatomic, strong) DrawerView *drawerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentDrawer:(id)sender {

    if (!self.drawerView) {
        self.drawerView = [[DrawerView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, drawerHeight)];
        self.drawerView.backgroundColor = [UIColor blueColor];
        
        self.drawerView.delegate = self;        
        [self.view addSubview:self.drawerView];
    }
    
    [UIView animateWithDuration:0.3 animations:^{
        self.drawerView.frame = CGRectMake(0, self.view.frame.size.height - drawerHeight, self.view.frame.size.width, drawerHeight);
    }];
    
    
    
}

- (void)drawerView:(DrawerView *)drawerView didSelectButtonIndex:(NSInteger)index {

    if (index == 0) {
        self.selectionLabel.text = @"User Selected Button 1";
    } else {
        self.selectionLabel.text = @"User Selected Button 2";
    }
    
    [UIView animateWithDuration:0.2 animations:^{
        self.drawerView.frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, drawerHeight);
    }];

    
}


@end
