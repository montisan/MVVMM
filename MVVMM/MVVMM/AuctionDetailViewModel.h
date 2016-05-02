//
//  AuctionDetailViewModel.h
//  MVVMM
//
//  Created by Peter on 16/5/2.
//  Copyright © 2016年 Pete. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, AuctionBtnStatus)
{
    AuctionBtnStatusBid,
    AuctionBtnStatusRemind,
    AuctionBtnStatusCancelRemind,
    AuctionBtnStatusCanPay,
};

@interface AuctionDetailViewModel : NSObject

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *time;
@property (nonatomic, assign, readonly) AuctionBtnStatus btnStatus;

- (void)fetchAuctionDetailWithResponseStatus:(void(^)(NSError *error))block;

@end
