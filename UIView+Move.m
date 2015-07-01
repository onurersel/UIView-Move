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


-(float)x
{
    return self.frame.origin.x;
}
-(void)setX:(float)v
{
    self.frame = CGRectMake(v, self.frame.origin.y, self.frame.size.width, self
                            .frame.size.height);
}

-(float)y
{
    return self.frame.origin.y;
}
-(void)setY:(float)v
{
    self.frame = CGRectMake(self.frame.origin.x, v, self.frame.size.width, self
                            .frame.size.height);
}


-(float)width
{
    return self.frame.size.width;
}
-(void)setWidth:(float)v
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, v, self
                            .frame.size.height);
}


-(float)height
{
    return self.frame.size.height;
}
-(void)setHeight:(float)v
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self
                            .frame.size.width, v);
}


-(float)top
{
    return self.y;
}
-(void)setTop:(float)v
{
    self.y = v;
}


-(float)left
{
    return self.x;
}
-(void)setLeft:(float)v
{
    self.x = v;
}


-(float)right
{
    return self.x + self.width;
}
-(void)setRight:(float)v
{
    self.x = v - self.width;
}


-(float)bottom
{
    return self.y + self.height;
}
-(void)setBottom:(float)v
{
    self.y = v - self.height;
}


@end
