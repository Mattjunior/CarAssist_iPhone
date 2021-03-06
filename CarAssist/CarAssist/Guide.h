//
//  Guide.h
//  CarAssist
//
//  Created by 0thuerin on 02.12.12.
//  Copyright (c) 2012 Gruppe Fear. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Guide : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *categoryName;
@property (nonatomic) NSArray *steps;

- (Guide*) initWithName: (NSString*) name CategoryName: (NSString*) categoryName AndSteps: (NSArray*) steps;

@end
