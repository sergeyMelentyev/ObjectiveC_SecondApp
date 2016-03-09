//
//  MySelf.m
//  ObjectiveC_SecondApp
//
//  Created by Админ on 09.03.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "MySelf.h"

@implementation MySelf
// INITIALIZER
-(id) init {
    if (self = [super init]) {
        
    }
    [self speakName];
    return self;
}

// OVERRIDE PARENT CLASS PROPS
-(void) overrideParent {
    self.firstName = @"Oleg";
}

// CREATE A NEW FUNCTION
-(void) speakName {
    NSLog(@"Call from MySelf class");
    // CALL A FUNCTION FROM SUPER CLASS
    [super speakName];
}

@end