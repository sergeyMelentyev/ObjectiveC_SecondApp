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

// DECLARE AN EXTERNAL VARIABLES AND METHODS
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@end