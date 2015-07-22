//
//  UILabel+Move.m
//
//  Created by Onur Ersel on 25/06/15.
//  Copyright (c) 2015 Onur Ersel. All rights reserved.
//

#import <UIKit/UIKit.h>


/*----------------------------------
 *
 * NSLogRect is a macro which logs CGRects without formatting
 *
 ---------------------------------*/
#define NSLogRect(rect) NSLog(@"[CGRect x:%f y%f width:%f  height:%f]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);



@interface UIView (Move)

@property (nonatomic)   float x;
@property (nonatomic)   float y;
@property (nonatomic)   float width;
@property (nonatomic)   float height;
@property (nonatomic)   float top;
@property (nonatomic)   float left;
@property (nonatomic)   float right;
@property (nonatomic)   float bottom;

@end
