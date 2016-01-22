//
//  City.m
//  AssessmentTwo
//
//  Created by Richard Martin on 2016-01-22.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype) initWithname:(NSString *)cityName andProvince:(NSString *)province andImage:(UIImage *)cityImage {
    
    
    self = [super init];
    
    
    if (self) {
        self.cityName = cityName;
        self.province = province;
        self.cityImage = cityImage;
    }
    
    
    return self;
}


@end
