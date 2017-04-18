//
//  RYBaiduMapView.m
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//

#import "RYBaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

@interface RYBaiduMapView ()

@property (nonatomic, strong) BMKMapView *mapView;

@end

@implementation RYBaiduMapView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super init]) {
        _mapView = [[BMKMapView alloc] initWithFrame:frame];
    }
    
    return self;
}

- (UIView *)getMapView {
    return _mapView;
}

@end
