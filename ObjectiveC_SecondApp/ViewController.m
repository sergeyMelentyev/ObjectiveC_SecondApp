//
//  ViewController.m
//  ObjectiveC_SecondApp
//
//  Created by Админ on 03.03.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

// DECLARE LOCAL VARIABLES AND METHODS
@interface ViewController ()

@property (nonatomic, strong) NSString *localString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // GET ACCESS TO EXTERNAL VARIABLE FROM ANY HEADER FILE
    self.externalString = @"FirstString";
    NSLog(@"%@", self.externalString);
    
    _externalString = @"SecondString";
    NSLog(@"%@", _externalString);
    
    [self setExternalString: @"ThirdString"];
    NSLog(@"%@", [self externalString]);
    
    // INITIALIZE A NEW CLASS AND GET ACCESS TO GLOBAL VARIABLES
    Person *personOne = [[Person alloc] init];
    personOne.firstName = @"Sergey";
    [personOne setLastName: @"Melentyev"];
    
    
    
}












@end