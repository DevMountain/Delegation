//
//  DrawerView.m
//  Delegation
//
//  Created by Joshua Howland on 10/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "DrawerView.h"

@implementation DrawerView

- (id)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        
        UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(40, 0, 100, 50)];
        [button1 setTitle:@"Button 1" forState:UIControlStateNormal];
        [button1 setTintColor:[UIColor whiteColor]];
        button1.tag = 0;
        [button1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:button1];

        UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(180, 0, 100, 50)];
        [button2 setTitle:@"Button 2" forState:UIControlStateNormal];
        button2.tag = 1;
        [button2 setTintColor:[UIColor whiteColor]];
        [button2 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:button2];

        
    }
    return self;
    
}

- (void)buttonPressed:(id)sender {
    
    if ([self.delegate respondsToSelector:@selector(drawerView:didSelectButtonIndex:)]) {
        [self.delegate drawerView:self didSelectButtonIndex:[sender tag]];
    }

}

@end
