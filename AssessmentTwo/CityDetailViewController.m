//
//  CityDetailViewController.m
//  AssessmentTwo
//
//  Created by Richard Martin on 2016-01-22.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "CityDetailViewController.h"

@interface CityDetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *cityTextField;

@property (weak, nonatomic) IBOutlet UITextField *provinceTextField;


@property (weak, nonatomic) IBOutlet UIImageView *cityImageView;

@end

@implementation CityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // self.title =
    
    self.cityTextField.text = self.cityObject.cityName;
    [self.cityTextField sizeToFit];
    
    self.provinceTextField.text = self.cityObject.province;
    [self.provinceTextField sizeToFit];
    
    self.cityImageView.image = self.cityObject.cityImage;
    
    self.cityTextField.userInteractionEnabled = YES;
    self.provinceTextField.userInteractionEnabled = YES;
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    self.cityObject.cityName = self.cityTextField.text;
    
    [self.cityTextField resignFirstResponder];
    
    self.cityObject.province = self.provinceTextField.text;
    
    [self.provinceTextField resignFirstResponder];
    
    return YES;
}


- (IBAction)onButtonPressedUpdateCityName:(UIButton *)sender {
    
    [self.delegate cityNameText:self.cityTextField.text didTapButton:sender];
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
