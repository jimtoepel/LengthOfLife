//
//  main.m
//  LengthOfLife
//
//  Created by Jim Toepel on 2/15/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // interval since Date.
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"\nThe date is: %@", now);
        
        
        // set my date
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear: 1982];
        [comps setMonth: 2];
        [comps setDay: 18];
        [comps setHour: 14];
        [comps setMinute: 32];
        [comps setSecond: 00];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSLog(@"\nMy Birthday is: %@", dateOfBirth);
        
        double lifeTime = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"\nI've been alive for approximately %f seconds", lifeTime);
        
        float lifeYears = lifeTime/60/60/24/365.25;
        
        NSLog(@"\nThat's %.2f years, if you're keeping track...", lifeYears);
    }
    return 0;
}
