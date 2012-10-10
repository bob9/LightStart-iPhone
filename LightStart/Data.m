//
//  Data.m
//  
//
//  Created by ___FULLUSERNAME___ on 10/10/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "Data.h"

#import "Switch.h"

@implementation Data

@synthesize switches = _switches;

+ (Data *)instanceFromDictionary:(NSDictionary *)aDictionary {

    Data *instance = [[Data alloc] init];
    [instance setAttributesFromDictionary:aDictionary];
    return instance;

}

- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary {

    if (![aDictionary isKindOfClass:[NSDictionary class]]) {
        return;
    }

    [self setValuesForKeysWithDictionary:aDictionary];

}

- (void)setValue:(id)value forKey:(NSString *)key {

    if ([key isEqualToString:@"Switches"]) {

        if ([value isKindOfClass:[NSArray class]]) {

            NSMutableArray *myMembers = [NSMutableArray arrayWithCapacity:[value count]];
            for (id valueMember in value) {
                Switch *populatedMember = [Switch instanceFromDictionary:valueMember];
                [myMembers addObject:populatedMember];
            }

            self.switches = myMembers;

        }

    } else {
        [super setValue:value forKey:key];
    }

}


- (void)setValue:(id)value forUndefinedKey:(NSString *)key {

    if ([key isEqualToString:@"Switches"]) {
        [self setValue:value forKey:@"switches"];
    } else {
        [super setValue:value forUndefinedKey:key];
    }

}


@end
