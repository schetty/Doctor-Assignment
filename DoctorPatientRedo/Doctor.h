//
//  Doctor.h
//  DoctorPatientRedo
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString * name;

@property (nonatomic, strong) NSString * practice;

@property (nonatomic, strong) NSMutableArray * acceptedPatients;

//@property (nonatomic, strong) Patient * patient;


-(instancetype)initWithName:(NSString *)name andPractice:(NSString *)practice;

-(void)acceptPatient:(Patient *)patient;

@end
