//
//  RYGaodeMapView.h
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IMapView.h"

@interface RYGaodeMapView : NSObject <IMapView>

- (instancetype)initWithFrame:(CGRect)frame;

- (UIView *)getMapView;

@end
