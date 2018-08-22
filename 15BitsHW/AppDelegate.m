//
//  AppDelegate.m
//  15BitsHW
//
//  Created by Eduard Galchenko on 8/22/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import "AppDelegate.h"
#import "EGBStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
  
#pragma mark - Level "Learner"
    
    NSMutableArray *allStudents = [NSMutableArray array];
    
    for (int i = 0; i < 10; i++) {
        
        EGBStudent *student = [[EGBStudent alloc] init];
     
        for (int j = 0; j < 7; j++) {
            
                switch (arc4random_uniform(7))
                {
                    case 0:
                        student.subjectType = student.subjectType | EGBStudentSubjectTypeBiology;
                        break;
                    case 1:
                        student.subjectType = student.subjectType | EGBStudentSubjectTypeMath;
                        break;
                    case 2:
                        student.subjectType = student.subjectType | EGBStudentSubjectTypeDevelopment;
                        break;
                    case 3:
                        student.subjectType = student.subjectType | EGBStudentSubjectTypeEngineering;
                        break;
                    case 4:
                        student.subjectType = student.subjectType | EGBStudentSubjectTypeArt;
                        break;
                    case 5:
                        student.subjectType = student.subjectType | EGBStudentSubjectTypePhycology;
                        break;
                    case 6:
                        student.subjectType = student.subjectType | EGBStudentSubjectTypeAnatomy;
                        break;
                }
        }

        
        [allStudents addObject:student];
        
        /*
        NSLog(@"Student #%d", i+1);
        NSLog(@"%@", student);
        NSLog(@" ");
        */
    }
  

    

        
#pragma mark - Level "Student"
 
  /*
        NSMutableArray *technicalStudents = [NSMutableArray array];
        NSMutableArray *humanitarianStudents = [NSMutableArray array];
    
        NSInteger developers = 0;
        
        
        for (EGBStudent *student in allStudents) {
            
            if (student.subjectType & EGBStudentSubjectTypeMath) {
                [technicalStudents addObject:student];
            } else {
                [humanitarianStudents addObject:student];
            }
            
            if (student.subjectType & EGBStudentSubjectTypeDevelopment) {
                developers++;
            }
            
        }
    
    NSLog(@"Amount of Developers: %ld", (long)developers);
    NSLog(@" ");
    
    NSLog(@"Technical Students: %lu", (unsigned long)[technicalStudents count]);
    
    for (int i = 0; i < [technicalStudents count]; i++) {
        NSLog(@"Student #%d", i+1);
    }
    
    NSLog(@" ");
    
     NSLog(@"Humanitarian Students: %lu", (unsigned long)[humanitarianStudents count]);

     for (int i = 0; i < [humanitarianStudents count]; i++) {
     NSLog(@"Student #%d", i+1);
     }
   */
    
#pragma mark - Level "Master"
/*
    for (EGBStudent *student in allStudents) {
        
        if (student.subjectType & EGBStudentSubjectTypeBiology) {
            
            NSLog(@"Biology canceled!");
            student.subjectType = student.subjectType ^ EGBStudentSubjectTypeBiology;
            NSLog(@"%@", student);
        }
    }
 */
    
#pragma mark - Level "SuperMan"
    
    NSInteger ramdom = arc4random() % NSIntegerMax;
    
    NSLog(@"%ld", (long)ramdom);
    
    // Convert value to a hexadecimal string
    NSMutableString *string = [NSMutableString stringWithFormat:@""];
    
    for (NSInteger numberCopy = ramdom; numberCopy > 0; numberCopy >>= 1)
    {
        // Prepend "0" or "1", depending on the bit
        [string insertString:((numberCopy & 1) ? @"1" : @"0") atIndex:0];
    }
    NSLog(@"%@", string);
    
    // Convert value to a hexadecimal string
    NSString *str = [NSString stringWithFormat:@"%lx", (long)ramdom];
    NSLog(@"0x%@", str);
 
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
