//
//  AuctionDetailViewModel.m
//  MVVMM
//
//  Created by Peter on 16/5/2.
//  Copyright © 2016年 Pete. All rights reserved.
//

#import "AuctionDetailViewModel.h"
#import "APIAuctionDetailRequester.h"

@interface AuctionDetailViewModel()

@property (nonatomic, strong) APIAuctionDetailRequester *requester;

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *time;
@property (nonatomic, assign, readwrite) AuctionBtnStatus btnStatus;

@end

@implementation AuctionDetailViewModel

- (APIAuctionDetailRequester *)requester
{
    if (!_requester)
    {
        _requester = [APIAuctionDetailRequester new];
    }
    
    return _requester;
}

- (void)fetchAuctionDetailWithResponseStatus:(void(^)(NSError *error))block
{
    [self.requester requestAutionDetailWithResult:^(id result, NSError *error) {
        
        [self transformDataWithResult:result];
        
        block(error);
        
    }];
}

- (void)transformDataWithResult:(id)result
{
    // 这里根据服务器返回的数据转化成UI界面展现的数据，即这里是展示逻辑
    // 比如我们项目中的时间展示和抢拍按钮状态的展开是由服务器返回的多个字段值决定的
    // 即 self.time 和 self.btnStatus 的具体值的设置不是一个简单的一一赋值的过程
    // self.time 和 self.btnStatus 确定好后，UI界面根据这两个值对应展现就行，View中不需再关心业务展示逻辑。
}

@end
