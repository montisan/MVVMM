//
//  AuctionBusinessManager.m
//  MVVMM
//
//  Created by Peter on 16/5/2.
//  Copyright © 2016年 Pete. All rights reserved.
//

#import "AuctionBusinessManager.h"

#import "APIBidReuquester.h"

@interface AuctionBusinessManager()

@property (nonatomic, strong) APIBidReuquester *bidRequester;

@end

@implementation AuctionBusinessManager

- (APIBidReuquester *)bidRequester
{
    if (!_bidRequester)
    {
        _bidRequester = [APIBidReuquester new];
    }
    
    return _bidRequester;
}


- (void)doBidWithItemID:(long)itemID observer:(id<AuctionBusinessProcessResultProtocol>)observer
{
    // 根据具体业务处理一些逻辑，比如如果需要登录，可以放在这里检查并弹出登录对话框等
    /*
     ...
     ...
     */
    
    
    // 等处理完成后通知监听者处理结果
    [self.bidRequester requestBidWithResult:^(id result, NSError *error) {
        
        // 根据result做相应逻辑，包括弹一些错误对话框等可以在这里处理
        /*
         ...
         ...
         */
        
        [observer didBidWithItemID:itemID withError:error];
    }];
    
    
}

- (void)doRemindWithItemID:(long)itemID observer:(id<AuctionBusinessProcessResultProtocol>)observer
{
}

- (void)doCancelRemindWithItemID:(long)itemID observer:(id<AuctionBusinessProcessResultProtocol>)observer
{
}

- (void)doPayWithItemID:(long)itemID observer:(id<AuctionBusinessProcessResultProtocol>)observer
{
}

@end
