//
//  ViewController.m
//  20170418001-MapFactory(Protocal)
//
//  Created by Rainer on 2017/4/18.
//  Copyright © 2017年 Rainer. All rights reserved.
//

#import "ViewController.h"
#import "MapEngine.h"

//#import "RYBaiduMapViewFactory.h"
//#import "RYGaodeMapViewFactory.h"

//#import "RYBaiduMapView.h"
//#import "RYGaodeMapView.h"

//#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
//#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件
//#import <MAMapKit/MAMapKit.h>
//#import <AMapFoundationKit/AMapFoundationKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self test1];
//    [self test2];
//    [self test3];
//    [self test4];
//    [self test5];
//    [self test6];
    [self test7];
}

/**
 使用抽象工厂引擎的方式实现
 */
- (void)test7 {
    // 1.创建地图引擎对象
    MapEngine *mapEngine = [[MapEngine alloc] init];
    
    // 2.获取地图创建工厂
    id<IMapFactory> mapFactory = [mapEngine getMapFactory];
    
    // 3.通过工厂创建地图
    id<IMapView> mapView = [mapFactory getMapViewWithFrame:self.view.frame];
    
    // 4.通过地图获取试图
    [self.view addSubview:[mapView getMapView]];
}

/**
 高德地图：工厂方法方式集成
 */
//- (void)test6 {
//    id<IMapFactory> mapViewFactory = [[RYGaodeMapViewFactory alloc] init];
//    
//    id<IMapView> mapView = [mapViewFactory getMapViewWithFrame:self.view.frame];
//    
//    [self.view addSubview:[mapView getMapView]];
//}

/**
 百度地图：工厂方法方式集成
 */
//- (void)test5 {
//    id<IMapFactory> mapFactory = [[RYBaiduMapViewFactory alloc] init];
//    
//    id<IMapView> mapView = [mapFactory getMapViewWithFrame:self.view.frame];
//    
//    [self.view addSubview:[mapView getMapView]];
//}

/**
 高德地图：协议方式集成
 */
//- (void)test4 {
//    id<IMapView> gaodeMapView = [[RYGaodeMapView alloc] initWithFrame:self.view.frame];
//    
//    [self.view addSubview:gaodeMapView.getMapView];
//}

/**
 高德地图：基本方式集成
 */
//- (void)test3 {
//    ///地图需要v4.5.0及以上版本才必须要打开此选项（v4.5.0以下版本，需要手动配置info.plist）
//    [AMapServices sharedServices].enableHTTPS = YES;
//    
//    ///初始化地图
//    MAMapView *_mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
//    
//    ///把地图添加至view
//    [self.view addSubview:_mapView];
//}

/**
 百度地图：协议方式集成
 */
//- (void)test2 {
//    id<IMapView> baiduMapView = [[RYBaiduMapView alloc] initWithFrame:self.view.frame];
//    
//    [self.view addSubview:baiduMapView.getMapView];
//}

/**
 百度地图：基本方式集成
 */
//- (void)test1 {
//    BMKMapView *mapView = [[BMKMapView alloc] initWithFrame:self.view.frame];
//    
//    [self.view addSubview:mapView];
//}

//- (void)viewWillAppear:(BOOL)animated
//{
//    [_mapView viewWillAppear];
//}
//
//- (void)viewWillDisappear:(BOOL)animated
//{
//    [_mapView viewWillDisappear];
//}


@end
