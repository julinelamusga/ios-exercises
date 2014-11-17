//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSMutableString *mutableCheese = [[NSMutableString alloc] initWithString: cheeseName];
    [mutableCheese replaceOccurrencesOfString: (NSString *) @" cheese"
                                      withString: @""
                                         options: NSCaseInsensitiveSearch
                                          range: NSMakeRange(0, [cheeseName length])];
    return mutableCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        return (@"1 cheese");
    } else {
        NSString *cheeseString = [NSString stringWithFormat:@"%lu cheeses", (unsigned long)cheeseCount];
        return cheeseString;
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
