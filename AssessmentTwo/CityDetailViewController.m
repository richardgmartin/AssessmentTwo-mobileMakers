//
//  CityDetailViewController.m
//  AssessmentTwo
//
//  Created by Richard Martin on 2016-01-22.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "CityDetailViewController.h"
#import "WikiWebViewController.h"


@interface CityDetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *cityTextField;

@property (weak, nonatomic) IBOutlet UITextField *provinceTextField;

@property (weak, nonatomic) IBOutlet UIImageView *cityImageView;

@property (weak, nonatomic) IBOutlet UIButton *wikiButton;

@end

@implementation CityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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

-(void)textFieldDidEndEditing:(UITextField *)textField {
    
    self.cityObject.cityName = self.cityTextField.text;
    
    [self.cityTextField resignFirstResponder];
    
    self.cityObject.province = self.provinceTextField.text;
    
    [self.provinceTextField resignFirstResponder];
}


- (IBAction)onButtonPressedUpdateCityName:(UIButton *)sender {
    
    self.cityObject.cityName = self.cityTextField.text;

    self.cityObject.province = self.provinceTextField.text;
    
    [self.delegate cityNameText:self.cityTextField.text didTapButton:sender];
    
}

- (IBAction)onWikiButtonPressed:(UIButton *)sender {
}


// segue to wikiwebpage view controller


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    WikiWebViewController *dvc = segue.destinationViewController;
    
    dvc.name = self.cityTextField.text;
    
}

-(IBAction)goback:(UIStoryboardSegue *)sender {
    
}

@end
