//
//  SwitchModel.m
//  
//
//  Created by ___FULLUSERNAME___ on 10/10/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "SwitchModel.h"

#import "Data.h"

@implementation SwitchModel

@synthesize data = _data;

+ (SwitchModel *)instanceFromDictionary:(NSDictionary *)aDictionary {

    SwitchModel *instance = [[SwitchModel alloc] init];
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

    if ([key isEqualToString:@"Data"]) {

        if ([value isKindOfClass:[NSDictionary class]]) {
            self.data = [Data instanceFromDictionary:value];
        }

    } else {
        [super setValue:value forKey:key];
    }

}


- (void)setValue:(id)value forUndefinedKey:(NSString *)key {

    if ([key isEqualToString:@"Data"]) {
        [self setValue:value forKey:@"data"];
    } else {
        [super setValue:value forUndefinedKey:key];
    }

}


@end
