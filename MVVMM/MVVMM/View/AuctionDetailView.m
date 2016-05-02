//
//  AuctionDetailView.m
//  MVVMM
//
//  Created by Peter on 16/5/2.
//  Copyright © 2016年 Pete. All rights reserved.
//

#import "AuctionDetailView.h"

@interface AuctionDetailView()<AuctionBusinessProcessResultProtocol>

@property (nonatomic, strong) AuctionDetailViewModel *viewModel;

@end

@implementation AuctionDetailView

- (void)updateWithViewModel:(AuctionDetailViewModel *)viewModel
{
    // 根据 ViewModel 的来更新界面元素及按钮展现等
    self.viewModel = viewModel;
    /*
     self.titleLabel.text = viewModel.title;
     self.timeLabel.text = viewModel.time;
     ...
     */
}

// 这里举一个UI上业务交互的例子
- (void)buttonClicked:(id)sender
{
    // 比如按钮点击后，需要抢拍的操作，则使用如下调用：
    [self.businessManager doBidWithItemID:12312 observer:self];
}


#pragma mark - 
- (void)didBidWithItemID:(long)itemID withError:(NSError *)error
{
    // 根据具体情况关注处理结果
}
@end
