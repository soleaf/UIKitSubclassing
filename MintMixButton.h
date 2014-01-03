//
//  MintMixButton.h
//  UIKitSubClassing
//
//  Created by soleaf on 14. 1. 3..
//  Copyright (c) 2014년 soleaf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MintMixButton : UIButton

// Embeding Data
@property NSMutableDictionary *mutableDict;
@property NSDictionary *dict;
@property NSArray *array;
@property NSMutableArray *mutableArray;

// Highlighting Background Color
@property UIColor *normalBackgroudColor;
@property UIColor *highlightedBackgroudColor;

/// Link Highlighting LabelColor
@property UIColor *linkedLabelNormalColor;
@property UIColor *linkedLabelHighlightedColor;
@property UILabel *linkedLabel;

@end
