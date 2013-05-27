//
//  SecondViewController.h
//  line
//
//  Created by 謝至騏 on 13/1/7.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//
#define kProvinceComponent 0
#define kCityComponent 1

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSDictionary *PropertyMRT;
@property (strong, nonatomic) NSArray *provinces;
@property (strong, nonatomic) NSArray *cities;
@property (weak, nonatomic) IBOutlet UITextField *gowhere;
@property (weak, nonatomic) IBOutlet UITextField *arriver;

- (IBAction)hideKeyboard:(id)sender;

- (IBAction)ticker:(id)sender;

@end
