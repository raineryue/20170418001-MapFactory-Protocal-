//
//  MapEngine.h
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//  地图工厂引擎

#import <Foundation/Foundation.h>
#import "IMapFactory.h"

@interface MapEngine : NSObject

/**
 获取地图工厂：（包含百度地图工厂、高德地图工厂）

 @return 地图工厂
 */
- (id<IMapFactory>)getMapFactory;

@end
