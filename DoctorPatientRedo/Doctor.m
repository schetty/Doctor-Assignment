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
        
        NSMutableArray *acceptedPatients = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)acceptPatient:(Patient *)patient {
    if (patient.hasInsurance) {
        [self acceptPatient:(patient)];
        [self.acceptedPatients addObject:patient];
    }
    
    else {
        NSLog(@"HealthCard Needed to visit Doctor");
    
    }
}
@end
