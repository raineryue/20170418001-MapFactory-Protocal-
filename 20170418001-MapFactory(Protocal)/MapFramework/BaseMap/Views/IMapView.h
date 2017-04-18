//
//  IMapView.h
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//  地图试图协议

#import <UIKit/UIKit.h>

@protocol IMapView <NSObject>

/**
 初始化一个地图对象

 @param frame 位置大小
 @return 地图对象
 */
- (instancetype)initWithFrame:(CGRect)frame;

/**
 获取地图试图

 @return 地图试图
 */
- (UIView *)getMapView;

@end
