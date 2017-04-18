//
//  RYGaodeMapViewFactory.m
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//

#import "RYGaodeMapViewFactory.h"
#import "RYGaodeMapView.h"
#import <AMapFoundationKit/AMapFoundationKit.h>

@implementation RYGaodeMapViewFactory
/**
 初始化工厂对象实例
 
 @return 对象
 */
- (instancetype)init {
    self = [super init];
    if (self) {
        [AMapServices sharedServices].apiKey =@"4926b77cce1a9c856b5c88a060ddc5bc";
    }
    return self;
}

/**
 获取地图试图
 
 @param frame 位置大小
 @return 地图试图
 */
- (id<IMapView>)getMapViewWithFrame:(CGRect)frame {
    return [[RYGaodeMapView alloc] initWithFrame:frame];
}

@end
