//
//  AuctionDetailViewController.m
//  MVVMM
//
//  Created by Peter on 16/5/2.
//  Copyright © 2016年 Pete. All rights reserved.
//

#import "AuctionDetailViewController.h"

#import "AuctionDetailView.h"
#import "AuctionDetailViewModel.h"
#import "AuctionBusinessManager.m"

@interface AuctionDetailViewController()

@property (nonatomic, strong) AuctionDetailView *detailView;
@property (nonatomic, strong) AuctionDetailViewModel *detailViewModel;
@property (nonatomic, strong) AuctionBusinessManager *businessManager;

@end

@implementation AuctionDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 这里只是描述一些主要代码逻辑，没有设置View坐标之类的
    _detailView = [AuctionDetailView new];
    [self.view addSubview:_detailView];
    
    // 设置业务逻辑manager
    _businessManager = [AuctionBusinessManager new];
    _detailView.businessManager = _businessManager;
    
    
    // ViewModel
    _detailViewModel = [AuctionDetailViewModel new];
    
    // 现在请求逻辑放到ViewModel中，根据具体情况也可以将网络请求抽离出来
    [_detailViewModel fetchAuctionDetailWithResponseStatus:^(NSError *error) {
        
        if (!error)
        {
            // 更新UI展现
            [_detailView updateWithViewModel:_detailViewModel];
        }
        
    }];
    
}

@end
