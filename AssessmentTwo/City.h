//
//  City.h
//  AssessmentTwo
//
//  Created by Richard Martin on 2016-01-22.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface City : NSObject

@property NSString *cityName;
@property NSString *province;
@property UIImage *cityImage;

-(instancetype) initWithname:(NSString *)cityName andProvince:(NSString *)province andImage:(UIImage *)cityImage;

@end
