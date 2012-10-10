//
//  Data.h
//  
//
//  Created by ___FULLUSERNAME___ on 10/10/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject {
    NSArray *_switches;
}

@property (nonatomic, copy) NSArray *switches;

+ (Data *)instanceFromDictionary:(NSDictionary *)aDictionary;
- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary;

@end
