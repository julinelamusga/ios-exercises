//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *sequence = [@"" mutableCopy];
    if (number < otherNumber) {
        while (number <= otherNumber) {
            [sequence appendFormat:@"%ld", (long)number];
            number++;
        }
    }
    else if (number > otherNumber) {
        while (number >= otherNumber) {
            [sequence appendFormat:@"%ld", (long)otherNumber];
            otherNumber++;
        }
    }
    else {
    [sequence appendFormat:@"%ld", (long)number];
    }
    return sequence;
}

@end
