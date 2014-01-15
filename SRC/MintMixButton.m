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
    if (self.highlightedBackgroudColor){
        if (highlighted) {
            self.backgroundColor = self.highlightedBackgroudColor;
        }
        else  if (self.normalBackgroudColor){
            self.backgroundColor = self.normalBackgroudColor;
        }
        else
            self.backgroundColor = [UIColor clearColor];
        
    }
    
    // Linked Label
    if (self.linkedLabel && self.linkedLabelHighlightedColor){
        if (highlighted) {
            self.linkedLabel.textColor = self.linkedLabelHighlightedColor;
        }
        else if(self.selected && self.linkedLabelSelectedColor){
            self.linkedLabel.textColor = self.linkedLabelSelectedColor;
        }
        else if (self.linkedLabelNormalColor){
            self.linkedLabel.textColor = self.linkedLabelNormalColor;
        }
        else{
            self.linkedLabel.textColor = [UIColor blackColor];
        }
        
    }
    
    // Linked ImageView
    if (self.linkedImageView && self.linkedImageViewHighlightedImage){
        if (highlighted) {
            self.linkedImageView.image = self.linkedImageViewHighlightedImage;
        }
        else if (self.selected && self.linkedImageViewSelectedImage) {
            self.linkedImageView.image = self.linkedImageViewSelectedImage;
        }
        else if (self.linkedImageViewNormalImage) {
            self.linkedImageView.image = self.linkedImageViewNormalImage;
        }
        else
            self.linkedImageView.image = nil;
        
    }
    
}

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    if (selected)
    {
        
        // Linked Label
        if (self.linkedLabel && self.linkedLabelSelectedColor)
            self.linkedLabel.textColor = self.linkedLabelSelectedColor;
        
        // Linked ImageView
        if (self.linkedImageView && self.linkedImageViewSelectedImage)
            self.linkedImageView.image = self.linkedImageViewSelectedImage;
        
    }
    else
    {
        // Linked Label
        if (self.linkedLabel && self.linkedLabelNormalColor)
            self.linkedLabel.textColor = self.linkedLabelNormalColor;
        
        // Linked ImageView
        if (self.linkedImageView && self.linkedImageViewNormalImage)
            self.linkedImageView.image = self.linkedImageViewNormalImage;
        
    }
}

@end
