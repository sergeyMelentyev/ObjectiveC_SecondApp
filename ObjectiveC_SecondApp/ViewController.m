//
//  ViewController.m
//  ObjectiveC_SecondApp
//
//  Created by Админ on 03.03.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "MySelf.h"

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
    
    // NSARRAY IS A CONSTANT DATA TYPE, FILL WITH OBJECTS AT INIT STAGE
    NSArray *arrConstant = [NSArray arrayWithObjects:@"One", @"Two", @"Three", nil];
    NSLog(@"%@", arrConstant);
    // NSARRAY LITERAL INIT
    NSArray *arrConstLit = @[@"One", @"Two", @"Three"];
    // GET SECOND OBJECT FROM ARRAY
    NSString *strFromArr = [arrConstLit objectAtIndex: 1];
    NSLog(@"%@ %@", arrConstLit, strFromArr);
    
    // NSMUTABLEARRAY, CAN BE MODIFIED LATER ON
    NSMutableArray *arrMutable = [[NSMutableArray alloc] init];
    NSLog(@"%@", arrMutable);
    [arrMutable addObject:@"One"];
    NSLog(@"%@", arrMutable);
    
    // NSDICTIONARY IS A CONSTANT DATA TYPE, FILL WITH OBJECTS AT INIT STAGE
    NSNumber *ageDictOne = [NSNumber numberWithInt: 33];
    NSDictionary *dictOne = @{@"FirstKey": @"FirstValue", @"SecondKey": ageDictOne};
    // GET INT VALUE FROM NSDICTIONARY
    int intNumber = [[dictOne objectForKey:@"SecondKey"] intValue];
    NSLog(@"%d", intNumber);
    
    //NSMUTABLEDICTIONARY, CAN BE MODIFIED LATER ON
    NSMutableDictionary *dictTwo = [@{@"FirstKey": @"FirstValue", @"SecondKey": @"SecondValue"} mutableCopy];
    NSMutableDictionary *dictThree = [[NSMutableDictionary alloc] init];
    [dictThree setObject:@"AnyObj" forKey:@"AnyKey"];
    NSLog(@"%@ %@", dictTwo, dictThree);
    
    //
    MySelf *callSuperClass = [[MySelf alloc] init];
    NSLog(@"%@", callSuperClass);
}

// FUNCTION THAT WILL RETURN BOOL AND TAKE ONE ARGUMENT OF TYPE DOUBLE
-(BOOL) canPurchase: (double) amount {
    if (self.bankAccount >= amount)
        return YES;
    else
        return NO;
}
// CORRECT FUNCTION NAME WITH TWO ARGUMENTS
-(void) declareWinnerWithPlayerAScore: (NSInteger) scoreA playerBScore: (NSInteger) scoreB {
    if (scoreA > scoreB)
        NSLog(@"Player A is a winner");
}
// FUNCTION CALL WITH ARGUMENT
-(void) anyFunctionName {
    if ([self canPurchase: self.itemAmount])
        NSLog(@"We can buy it");
    [self declareWinnerWithPlayerAScore:55 playerBScore:66];
    
    Person *newPersonA = [[Person alloc] init];
    [newPersonA speakName];                                 // CALL -STATIC FUNCTION
    [Person stateSpecies];                                  // CALL +CLASS FUNCTION
    
    // ВЛОЖЕННЫЕ ВЫЗОВЫ STATIC ФУНКЦИЙ
    UIImage *imageOne;
    imageOne = [UIImage imageWithData: [NSData dataWithContentsOfURL: [NSURL URLWithString: @""]]];
    // STEP BY STEP
    UIImage *imageTwo;
    NSString *str = @"";
    NSURL *url = [NSURL URLWithString: str];
    NSData *data = [NSData dataWithContentsOfURL: url];
    imageTwo = [UIImage imageWithData: data];
}









@end