//
//  Switch.h
//  
//
//  Created by ___FULLUSERNAME___ on 10/10/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Switch : NSObject {
    NSString *_P;
    NSString *_T;
    NSString *_V;
}

@property (nonatomic, copy) NSString *P;
@property (nonatomic, copy) NSString *T;
@property (nonatomic, copy) NSString *V;

+ (Switch *)instanceFromDictionary:(NSDictionary *)aDictionary;
- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary;

@end
