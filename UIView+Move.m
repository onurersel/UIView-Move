//
//  UILabel+Move.m
//
//  Created by Onur Ersel on 25/06/15.
//  Copyright (c) 2015 Onur Ersel. All rights reserved.
//

#import "UIView+Move.h"


@implementation UIView (Move)
@dynamic x, y, width, height;
@dynamic top, left, right, bottom;


#pragma mark - view coordinates


#pragma mark x
-(float)x
{
    return self.frame.origin.x;
}
-(void)setX:(float)v
{
    self.frame = CGRectMake(v, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

#pragma mark y
-(float)y
{
    return self.frame.origin.y;
}
-(void)setY:(float)v
{
    self.frame = CGRectMake(self.frame.origin.x, v, self.frame.size.width, self.frame.size.height);
}

#pragma mark width
-(float)width
{
    return self.frame.size.width;
}
-(void)setWidth:(float)v
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, v, self.frame.size.height);
}

#pragma mark height
-(float)height
{
    return self.frame.size.height;
}
-(void)setHeight:(float)v
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, v);
}

#pragma mark - relative position

#pragma mark top
-(float)top
{
    return self.y;
}
-(void)setTop:(float)v
{
    self.y = v;
}

#pragma mark left
-(float)left
{
    return self.x;
}
-(void)setLeft:(float)v
{
    self.x = v;
}

#pragma mark right
-(float)right
{
    UIView *_s = self.superview;
    if (_s == nil) {
        return 0;
    }
    
    return _s.width - self.x - self.width;
}
-(void)setRight:(float)v
{
    UIView *_s = self.superview;
    if (_s == nil) {
        return;
    }
    
    self.x = _s.width - v - self.width;
}


#pragma mark bottom
-(float)bottom
{
    UIView *_s = self.superview;
    if (_s == nil) {
        return 0;
    }
    
    return _s.height - self.y - self.height;
}
-(void)setBottom:(float)v
{
    UIView *_s = self.superview;
    if (_s == nil) {
        return;
    }
    
    self.y = _s.height - v - self.height;
}


@end
