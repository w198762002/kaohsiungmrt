//
//  MyAnnotation.h
//  line
//
//  Created by 謝至騏 on 13/1/8.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface MyAnnotation : NSObject<MKAnnotation>
-(id)initWithCoordinate:(CLLocationCoordinate2D)argGoordinate
                  title:(NSString*)argTitle subtitle:(NSString*)argSubtitle;


@end
