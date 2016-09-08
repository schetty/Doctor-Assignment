//
//  Patient.h
//  DoctorPatientRedo
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString * name;

@property int age;

@property (nonatomic, strong) NSMutableArray * symptoms;

@property BOOL hasInsurance;

- (instancetype)initWithName:(NSString *)name age:(int)age hasInsurance:(BOOL)insurance andSymptoms:(NSMutableArray *)symptoms;

- (void) requestMedicine:(Doctor *)doctor;


@end
