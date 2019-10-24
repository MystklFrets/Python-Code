//
//  EFAnimationViewController.h
//  aaatest
//
//  Created by Jueying on 15/5/17.
//  Copyright (c) 2015年 Jueying. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EFAnimationViewController : UIViewController

@end

@protocol EFItemViewDelegate <NSObject>

- (void)didTapped:(NSInteger)index;

@end




@interface EFItemView : UIButton

@property (nonatomic, weak) id <EFItemViewDelegate>delegate;

- (instancetype)initWithNormalImage:(NSString *)normal highlightedImage:(NSString *)highlighted tag:(NSInteger)tag title:(NSString *)title;

@end// Copyright belongs to original author
// http://code4app.net (en) http://code4app.com (cn)
// From the most professional code share website: Code4App.net