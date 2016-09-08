//
//  Doctor.h
//  DoctorPatientRedo
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic, strong) NSString * name;

@property (nonatomic, strong) NSString * practice;


- (instancetype)initWithName:(NSString *)name andPractice:(NSString *)practice;

- (void)diagnosis;

@end
