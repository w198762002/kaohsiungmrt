//
//  SecondViewController.m
//  line
//
//  Created by 謝至騏 on 13/1/7.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize picker;
@synthesize PropertyMRT;
@synthesize provinces;
@synthesize cities;
@synthesize arriver;
@synthesize gowhere;
bool isFirst = true;

- (void)viewDidLoad
{

    [super viewDidLoad];
    NSBundle *bundle = [NSBundle mainBundle];
    NSURL *plistURL = [bundle URLForResource:@"PropertyMRT" withExtension:@"plist"];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfURL:plistURL];
    self.PropertyMRT = dictionary;
    NSArray *components = [self.PropertyMRT allKeys];
    NSArray *sorted = [components sortedArrayUsingSelector:@selector(compare:)];
    self.provinces = sorted;
    
    NSString *selectedState = [self.provinces objectAtIndex:0];
    NSArray *array = [PropertyMRT objectForKey:selectedState];
    self.cities = array;
    
    
    gowhere.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerTap2)];
    
    [gowhere addGestureRecognizer:tapGesture2];
    
    
    arriver.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerTap)];
    
    [arriver addGestureRecognizer:tapGesture];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) pickerTap
{
    isFirst = false;
    NSLog(@"false");
}
-(void) pickerTap2
{
    isFirst = true;
    NSLog(@"false");
}


- (void)viewDidUnload
{
    self.picker = nil;
    self.PropertyMRT = nil;
    self.provinces = nil;
    self.cities = nil;
    self.gowhere = nil;
    self.arriver = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return NO;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



#pragma mark -
#pragma mark Picker Date Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == kProvinceComponent) {
        return [self.provinces count];
    }
    return [self.cities count];
}

#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == kProvinceComponent) {
        return [self.provinces objectAtIndex:row];
    }
    return [self.cities objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSString *cityData,*provinceData;
    
    if (component == kProvinceComponent) {
        NSString *selectedState = [self.provinces objectAtIndex:row];
        NSArray *array = [PropertyMRT objectForKey:selectedState];
        self.cities = array;
        [picker selectRow:0 inComponent:kCityComponent animated:YES];
        [picker reloadComponent:kCityComponent];
        provinceData = selectedState;
    }
    
    if (component == kCityComponent) {
        cityData = [self.cities objectAtIndex:row];
    }
    
    if(isFirst)
    {
        gowhere.text = cityData;
    }
    else{
        arriver.text = cityData;
    }
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    if (component == kCityComponent) {
        
        return 150;
    }   

    return 140;
}



//implement the required methods for the delegate and data source

- (IBAction)hideKeyboard:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)ticker:(id)sender {

    
    NSString *go= gowhere.text;
    NSString *arr = arriver.text;
    
    NSString *title = [[NSString alloc] initWithFormat:@"您選擇的路線為"];
    NSString *message = [[NSString alloc] initWithFormat:@" %@到%@" ,go,arr];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"好的" otherButtonTitles: nil];
    [alert show];
}
@end
