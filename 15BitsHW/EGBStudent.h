//
//  EGBStudent.h
//  15BitsHW
//
//  Created by Eduard Galchenko on 8/22/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    EGBStudentSubjectTypeBiology        = 1 << 0,
    EGBStudentSubjectTypeMath           = 1 << 1,
    EGBStudentSubjectTypeDevelopment    = 1 << 2,
    EGBStudentSubjectTypeEngineering    = 1 << 3,
    EGBStudentSubjectTypeArt            = 1 << 4,
    EGBStudentSubjectTypePhycology      = 1 << 5,
    EGBStudentSubjectTypeAnatomy        = 1 << 6
    
} EGBStudentSubjectType;

@interface EGBStudent : NSObject

@property (assign, nonatomic) EGBStudentSubjectType subjectType;

@end
