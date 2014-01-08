//
//  MintMixLabel.m
//  UIKitSubClassing
//
//  Created by soleaf on 14. 1. 3..
//  Copyright (c) 2014년 soleaf. All rights reserved.
//


#import "MintMixLabel.h"

@implementation MintMixLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


-(void)drawTextInRect:(CGRect)rect {
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.padding)];
}

@end
