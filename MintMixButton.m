//
//  MintMixButton.m
//  UIKitSubClassing
//
//  Created by soleaf on 14. 1. 3..
//  Copyright (c) 2014년 soleaf. All rights reserved.
//

#import "MintMixButton.h"

@implementation MintMixButton

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

- (void) setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    
    // Background
    if (self.highlightedBackgroudColor && self.normalBackgroudColor){
        if (highlighted) {
            self.backgroundColor = self.highlightedBackgroudColor;
        }
        else {
            self.backgroundColor = self.normalBackgroudColor;
        }
        
    }
    
    // Linked Label
    if (self.linkedLabel && self.linkedLabelNormalColor && self.linkedLabelHighlightedColor){
        if (highlighted) {
            self.linkedLabel.textColor = self.linkedLabelHighlightedColor;
        }
        else {
            self.linkedLabel.textColor = self.linkedLabelNormalColor;
        }
        
    }
    
}

@end
