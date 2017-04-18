//
//  IMapFactory.h
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//  地图抽象工厂协议

#import <Foundation/Foundation.h>
#import "ImapView.h"

@protocol IMapFactory <NSObject>

/**
 获取地图试图对象

 @param frame 位置大小
 @return 试图对象
 */
- (id<IMapView>)getMapViewWithFrame:(CGRect)frame;

@end
