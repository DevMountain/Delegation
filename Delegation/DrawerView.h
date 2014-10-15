//
//  DrawerView.h
//  Delegation
//
//  Created by Joshua Howland on 10/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DrawerViewDelegate;




@interface DrawerView : UIView

@property (nonatomic, assign) id<DrawerViewDelegate>delegate;

@end




@protocol DrawerViewDelegate <NSObject>

@optional

- (void)drawerView:(DrawerView *)drawerView didSelectButtonIndex:(NSInteger)index;

@end