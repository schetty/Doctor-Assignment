//
//  main.m
//  DoctorPatientRedo
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
  
        
        Doctor *theDoctor = [[Doctor alloc]init];
        [theDoctor setName:@"Kofi"];
        [theDoctor setPractice:@"Tropical Medicine"];
        
        Patient *firstPatient = [[Patient alloc]init];
        [firstPatient setName:@"Christa"];
        [firstPatient setAge:32];
        [firstPatient setHasInsurance:YES];
        firstPatient.symptoms = [NSMutableArray arrayWithObjects: @"upset stomach", @"diarrhea", @"dellusion", nil];
        
        Patient *secondPatient = [[Patient alloc]init];
        [secondPatient setName:@"Joel"];
        [secondPatient setAge:70];
        [secondPatient setHasInsurance:NO];
        secondPatient.symptoms = [NSMutableArray arrayWithObjects: @"insomnia", @"depression", @"burning peepee", nil];
        
        Patient *thirdPatient = [[Patient alloc]init];
        [thirdPatient setName:@"Remi"];
        [thirdPatient setAge:14];
        [thirdPatient setHasInsurance:YES];
        thirdPatient.symptoms = [NSMutableArray arrayWithObjects: @"metallic mucus", @"headaches", @"bloating", nil];
        
    }
    return 0;
}
