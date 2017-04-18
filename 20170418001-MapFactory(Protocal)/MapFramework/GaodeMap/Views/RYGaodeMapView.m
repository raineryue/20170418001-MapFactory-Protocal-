//
//  RYGaodeMapView.m
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//

#import "RYGaodeMapView.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface RYGaodeMapView ()

@property (nonatomic, strong) MAMapView *mapView;

@end

@implementation RYGaodeMapView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super init]) {
        [AMapServices sharedServices].enableHTTPS = YES;
        
        ///初始化地图
        _mapView = [[MAMapView alloc] initWithFrame:frame];
    }
    
    return self;
}

- (UIView *)getMapView {
    return _mapView;
}

@end
