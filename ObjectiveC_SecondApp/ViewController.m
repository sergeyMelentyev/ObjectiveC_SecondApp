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
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;
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
    personOne.firstName = @"Oleg";
    [personOne setLastName: @"Melentyev"];
    NSLog(@"%@", personOne.firstName);
    
    // NSSTRING FORMATE
    NSString *firstName = @"Sergey";
    NSString *lastName = @"Melentyev";
    NSString *fullName = [NSString stringWithFormat: @"%@ %@", firstName, lastName];
    NSString *prof = [fullName stringByAppendingString: @" - iOS Developer"];
    NSLog(@"%@", prof);
    if ([firstName isEqualToString: lastName]) {
        NSLog(@"Strings are the same");
    } else if ([firstName caseInsensitiveCompare: lastName] == NSOrderedSame) {
        NSLog(@"String are the same");
    } else if ([firstName.lowercaseString isEqualToString: lastName]) {
        NSLog(@"String are the same");
    } else {
        NSLog(@"String are not the same");
    }
    
    // NSNUMBER FORMATE
    NSNumber *firstNum = [NSNumber numberWithInt: 5];
    NSNumber *secondNum = [NSNumber numberWithInt: 6];
    int x = firstNum.intValue;
    int y = secondNum.intValue;
    int sum = x + y;
    NSNumber *numSum = [NSNumber numberWithInt: sum];
    NSLog(@"%d", numSum.intValue);
    
    // INIT LOCAL VARIABLES
    self.bankAccount = 500.50;
    self.itemAmount = 400.00;
}

// FUNCTION THAT WILL RETURN BOOL AND TAKE ONE ARGUMENT OF TYPE DOUBLE
-(BOOL) canPurchase: (double) amount {
    if (self.bankAccount >= amount)
        return YES;
    else
        return NO;
}
-(void) anyFunctionName {
    if ([self canPurchase: self.itemAmount]) {
        NSLog(@"We can buy it");
    }
}













@end