//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int intBigNumber = [number intValue] * 2;
    return [NSNumber numberWithInt:intBigNumber];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *numberArray = [@[] mutableCopy];
    while (number <= otherNumber) {
        [numberArray addObject:[NSNumber numberWithLong:number]];
        number++;
    }
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSMutableArray *mutableNumbers = [arrayOfNumbers mutableCopy];
    NSArray *sorted1 = [mutableNumbers sortedArrayUsingSelector:@selector(compare:)];
    return[sorted1[0] intValue];
}

@end
