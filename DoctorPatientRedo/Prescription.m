//
//  Prescription.m
//  DoctorPatientRedo
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWith
{
    self = [super init];
    if (self) {
        
        NSArray* listOfPrescriptions = [[NSArray alloc]init];
        listOfPrescriptions = @[@"paromomycin", @"cypro", @"tinidazole"];
    }
    return self;
}




@end
