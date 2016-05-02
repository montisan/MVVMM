//
//  AuctionBusinessProtocol.h
//  MVVMM
//
//  Created by Peter on 16/5/2.
//  Copyright © 2016年 Pete. All rights reserved.
//

#ifndef AuctionBusinessProtocol_h
#define AuctionBusinessProtocol_h


@protocol  AuctionBusinessProcessResultProtocol<NSObject>

@optional

- (void)didBidWithItemID:(long)itemID withError:(NSError *)error;
- (void)didRemindWithItemID:(long)itemID withError:(NSError *)error;
- (void)didCancelRemindWithItemID:(long)itemID withError:(NSError *)error;
- (void)didPayWithItemID:(long)itemID withError:(NSError *)error;

@end


@protocol AuctionBusinessProtocol <NSObject>

- (void)doBidWithItemID:(long)itemID observer:(id<AuctionBusinessProcessResultProtocol>)observer;
- (void)doRemindWithItemID:(long)itemID observer:(id<AuctionBusinessProcessResultProtocol>)observer;
- (void)doCancelRemindWithItemID:(long)itemID observer:(id<AuctionBusinessProcessResultProtocol>)observer;
- (void)doPayWithItemID:(long)itemID observer:(id<AuctionBusinessProcessResultProtocol>)observer;

@end




#endif /* AutionBusinessProtocol_h */
