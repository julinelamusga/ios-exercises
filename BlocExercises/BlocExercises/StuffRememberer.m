//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.coolArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.megaCoolArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.sickFloatBro = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.coolArray;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return self.megaCoolArray;
}

- (CGFloat) floatYouShouldRemember {
    return self.sickFloatBro;
}

@end