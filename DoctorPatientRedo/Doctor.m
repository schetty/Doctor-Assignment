//
//  Doctor.m
//  DoctorPatientRedo
//
//  Created by naomi schettini on 2016-09-08.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "Doctor.h"
#import "Prescription.h"


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

-(NSString*)prescribeMeds:(Patient *)patient {
    
    NSMutableArray* containsDiarrhea = [NSMutableArray array];
    NSMutableArray* containsInsomnia = [NSMutableArray array];
    NSMutableArray* containsBurningPeePee = [NSMutableArray array];
    
    
    NSMutableArray* unknown = [NSMutableArray array];
    
    NSString* diarrheaCure = @"Paromomycin";
    NSString* utiCure = @"Cypro";
    NSString* insomniaCure = @"Ambien";
    
    NSArray* listOfMedcines = @[diarrheaCure, utiCure, insomniaCure];
    
    
    //    metallic mucus", @"headaches", @"bloating", @"insomnia", @"depression", @"burning peepee", @"upset stomach", @"diarrhea", @"dellusion"
    if ([self.acceptedPatients containsObject:patient.name]) {
        Prescription *yourPrescription = listOfMedcines[index];
        for (NSString * symptom in patient.symptoms) {
            
            if ([symptom rangeOfString:@"diarrhea"].location !=NSNotFound) {
                [containsDiarrhea addObject:symptom];
            return listOfMedcines[0];
            }
            
            
            if ([symptom rangeOfString:@"burning"].location !=NSNotFound) {
                
                [containsBurningPeePee addObject:symptom];
            
            return listOfMedcines[1];
            }
            
            
            if ([symptom rangeOfString:@"insomnia"].location !=NSNotFound) {
                [containsBurningPeePee addObject:symptom];
            return listOfMedcines[2];
            }
            
            
            else {
                [unknown addObject:symptom];
                
                NSLog(@"I'm not sure what sickness you have");

                return nil;
                
                
            }
            
        }
    }
    return listOfMedcines [index];

}
@end
