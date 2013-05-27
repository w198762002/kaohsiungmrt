//
//  ViewMap.h
//  line
//
//  Created by 謝至騏 on 13/1/7.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewMap : UIViewController<MKMapViewDelegate>
{
    CLGeocoder *geocoder;
    CLLocationCoordinate2D coordinate101;
}

@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
@property double x,y;
@property(nonatomic) NSString *aa1;
@property(nonatomic) NSString *aa2;

@end
