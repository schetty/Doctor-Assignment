//
//  Doctor.m
//  DoctorPatientRedo
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andPractice:(NSString *)practice
{
    self = [super init];
    if (self) {
        _name = name;
        _practice = practice;
    }
    return self;
}

@end
