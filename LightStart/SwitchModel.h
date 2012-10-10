//
//  SwitchModel.h
//  
//
//  Created by ___FULLUSERNAME___ on 10/10/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Data;

@interface SwitchModel : NSObject {
    Data *_data;
}

@property (nonatomic, strong) Data *data;

+ (SwitchModel *)instanceFromDictionary:(NSDictionary *)aDictionary;
- (void)setAttributesFromDictionary:(NSDictionary *)aDictionary;

@end
