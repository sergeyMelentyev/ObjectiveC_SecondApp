//
//  Person.h
//  ObjectiveC_SecondApp
//
//  Created by Админ on 03.03.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>

// DECLARE AN INSTANCE VARIABLES
@interface Person : NSObject {
    BOOL isInsecure;
}

// DECLARE AN EXTERNAL VAR WILL CREATE AN INSTANCE VAR / A GETTER / A SETTER
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
// POINTER * ONLY BEFORE OBJECTS
@property (nonatomic) int age;
@property (nonatomic) NSInteger account;
@end