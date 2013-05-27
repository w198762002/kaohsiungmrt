//
//  ViewMap.m
//  line
//
//  Created by 謝至騏 on 13/1/7.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//

#import "ViewMap.h"
#import "MyAnnotation.h"
@interface ViewMap ()

@end

@implementation ViewMap
@synthesize myMapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title=@"地震位置";
    geocoder = [[CLGeocoder alloc]init];
    
    coordinate101.latitude = _x;
    coordinate101.longitude =_y;
    
    MKCoordinateRegion region;
    region.center = myMapView.userLocation.location.coordinate;
    MKCoordinateSpan mapSpan;
    mapSpan.latitudeDelta = 0.5;
    mapSpan.longitudeDelta = 0.5;
    region.span = mapSpan;
    myMapView.region = region;
    mapSpan.latitudeDelta =ABS(coordinate101.latitude-myMapView.userLocation.location.coordinate.latitude)*2;
    mapSpan.longitudeDelta=ABS(coordinate101.longitude-myMapView.userLocation.location.coordinate.longitude)*2;
    
    MyAnnotation *anntation =[[MyAnnotation alloc] initWithCoordinate:coordinate101 title:_aa1 subtitle:_aa2];
    
    [self.myMapView addAnnotation:anntation];
    

   


}



-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
    {
        NSLog(@"update 緯度: %f 經度: %f", userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude);
        
        MKCoordinateRegion region ;
        region.center = userLocation.location.coordinate;
        MKCoordinateSpan mapSpan;
        mapSpan.latitudeDelta = 3;
        mapSpan.longitudeDelta = 3;
        region.span = mapSpan;
        myMapView.region = region;
       mapSpan.latitudeDelta =ABS(coordinate101.latitude-userLocation.location.coordinate.latitude)*2;
        mapSpan.longitudeDelta=ABS(coordinate101.longitude-userLocation.location.coordinate.latitude)*2;
        
        [geocoder reverseGeocodeLocation:userLocation.location completionHandler:^(NSArray *placemarks,NSError *error){
            if (error == nil &&[placemarks count] > 0)
            {
                CLPlacemark *placeMake = [placemarks objectAtIndex:0];
                NSLog(@"%@" , placeMake.addressDictionary);
                NSArray *addressArray = [placeMake.addressDictionary objectForKey:@"FormattedAddressLines"];
                userLocation.title = [addressArray objectAtIndex:0];
                userLocation.subtitle = @"樹德科技大學";
            }
            
            
            
        }];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
