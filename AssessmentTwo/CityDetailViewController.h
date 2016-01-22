//
//  CityDetailViewController.h
//  AssessmentTwo
//
//  Created by Richard Martin on 2016-01-22.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@protocol CityDetailViewDelegate <NSObject>

-(void)cityNameText:(id)name didTapButton:(UIButton *)button;

@end


@interface CityDetailViewController : UIViewController

@property City *cityObject;

@property (nonatomic, assign) id <CityDetailViewDelegate> delegate;

@end
