//
//  Person.m
//  ObjectiveC_SecondApp
//
//  Created by Админ on 03.03.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "Person.h"

@implementation Person

// GET ACCESS TO LOCAL INSTANSE VARIABLE ONLY INSIDE A CLASS
-(void) accessToInstanceVar {
    isInsecure = FALSE;
}

// CUSTOM SETTER OVERRIDE
-(NSString*) firstName {
    if ([_firstName isEqualToString: @"Sergey"]) {
        return _firstName;
    } else {
        return @"Example of custom data hiding";
    }
}

// IMPLEMENT A CLASS FUNCTION
-(void) speakName {
    NSLog(@"My name is Sergey");
}
// IMPLEMENT A STATIC FUNCTION
+(void) stateSpecies {
    NSLog(@"I ma a human");
}








@end