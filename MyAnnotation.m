//
//  MyAnnotation.m
//  line
//
//  Created by 謝至騏 on 13/1/8.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation
@synthesize coordinate;
@synthesize title;
@synthesize subtitle;
-(id)initWithCoordinate:(CLLocationCoordinate2D)argCoordinate title:(NSString *)argTitle subtitle:(NSString *)argSubtitle
{
    self = [super init];
    if (self) {
        coordinate = argCoordinate;
        title = argTitle;
        subtitle = argSubtitle;
    }
    return self;
}

@end
