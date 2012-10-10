//
//  Switch.m
//  
//
//  Created by ___FULLUSERNAME___ on 10/10/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "Switch.h"

@implementation Switch

@synthesize P = _P;
@synthesize T = _T;
@synthesize V = _V;

+ (Switch *)instanceFromDictionary:(NSDictionary *)aDictionary {

    Switch *instance = [[Switch alloc] init];
    [instance setAttributesFromDictionary:aDictionary];
    return instance;

}

- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary {

    if (![aDictionary isKindOfClass:[NSDictionary class]]) {
        return;
    }

    [self setValuesForKeysWithDictionary:aDictionary];

}

@end
