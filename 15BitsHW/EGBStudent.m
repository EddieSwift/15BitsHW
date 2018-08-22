//
//  EGBStudent.m
//  15BitsHW
//
//  Created by Eduard Galchenko on 8/22/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import "EGBStudent.h"

@implementation EGBStudent

- (NSString*) answerByType:(EGBStudentSubjectType) type {
    return self.subjectType & type ? @"Yes" : @"No";
}

- (NSString*) description {
    
    
    return [NSString stringWithFormat:@"Student studies:\n"
            "Biology = %@\n"
            "Math = %@\n"
            "Development = %@\n"
            "Engineering = %@\n"
            "Art = %@\n"
            "Phycology = %@\n"
            "Anatomy = %@\n",
            [self answerByType:EGBStudentSubjectTypeBiology],
            [self answerByType:EGBStudentSubjectTypeMath],
            [self answerByType:EGBStudentSubjectTypeDevelopment],
            [self answerByType:EGBStudentSubjectTypeEngineering],
            [self answerByType:EGBStudentSubjectTypeArt],
            [self answerByType:EGBStudentSubjectTypePhycology],
            [self answerByType:EGBStudentSubjectTypeAnatomy]];
}


@end
