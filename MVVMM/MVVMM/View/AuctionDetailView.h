//
//  AuctionDetailView.h
//  MVVMM
//
//  Created by Peter on 16/5/2.
//  Copyright © 2016年 Pete. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AuctionDetailViewModel.h"
#import "AuctionBusinessProtocol.h"

@interface AuctionDetailView : UIView

@property (nonatomic, weak) id<AuctionBusinessProtocol> businessManager;

// 更新UI展现
- (void)updateWithViewModel:(AuctionDetailViewModel *)viewModel;

@end
