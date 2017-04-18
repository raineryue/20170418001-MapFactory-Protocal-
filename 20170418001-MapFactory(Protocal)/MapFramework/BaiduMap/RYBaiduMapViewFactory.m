//
//  RYBaiduMapViewFactory.m
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//

#import "RYBaiduMapViewFactory.h"
#import "RYBaiduMapView.h"
#import <BaiduMapAPI_Map/BMKMapComponent.h>

@implementation RYBaiduMapViewFactory

/**
 初始化工厂对象实例

 @return 对象
 */
- (instancetype)init {
    self = [super init];
    if (self) {
        // 要使用百度地图，请先启动BaiduMapManager
        BMKMapManager *mapManager = [[BMKMapManager alloc] init];
        
        // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
        BOOL ret = [mapManager start:@"OWo8FFmUakiOTKWkDlhpbcbmTBNniwX1"  generalDelegate:nil];
        
        if (!ret) {
            NSLog(@"manager start failed!");
        }
    }
    return self;
}

/**
 获取地图试图

 @param frame 位置大小
 @return 地图试图
 */
- (id<IMapView>)getMapViewWithFrame:(CGRect)frame {
    return [[RYBaiduMapView alloc] initWithFrame:frame];
}

@end
