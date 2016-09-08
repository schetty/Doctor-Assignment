//
//  Patient.m
//  DoctorPatientRedo
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"


@implementation Patient

- (instancetype)initWithName:(NSString *)name age:(int)age hasInsurance:(BOOL)insurance andSymptoms:(NSMutableArray *)symptoms
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasInsurance = insurance;
        _symptoms = symptoms;
    }
    return self;
}

- (void)requestMedicine:(Doctor *)doctor {
    if ([doctor.acceptedPatients containsObject:self.name]) {
        NSLog(@"ok, you can have some medicine");
    }
    else {
        NSLog(@"sorry, you are not on Doctor's accepted patient's List");
    }
}


@end
