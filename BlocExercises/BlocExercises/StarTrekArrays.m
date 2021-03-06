//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
   return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *mutableCharacters = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableCharacters sortUsingDescriptors:@[sortDescriptor]];
    return mutableCharacters;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
//    NSMutableArray *myMutableCharacters = [characterArray mutableCopy];
    
    for (NSString *character in characterArray) {
        if ([character.lowercaseString containsString:@"worf"]) {
            return YES;
        }
    }
    
    return NO;
    
    
//    NSPredicate *findWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
//    
////    [myMutableCharacters containsObject:@"worf"];
//    [myMutableCharacters filterUsingPredicate:findWorf];
//    return (myMutableCharacters.count >= 1);
}

@end
