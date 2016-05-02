//
//  APIAuctionDetailRequester.h
//  MVVMM
//
//  Created by Peter on 16/5/2.
//  Copyright © 2016年 Pete. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIAuctionDetailRequester : NSObject

// 项目中每个API对应一个Requester类
- (void)requestAutionDetailWithResult:(void(^)(id result, NSError *error))block;

@end
