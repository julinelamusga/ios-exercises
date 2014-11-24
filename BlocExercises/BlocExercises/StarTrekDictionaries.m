//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *mutableDrinks = [@[] mutableCopy];
    for (NSDictionary* character in charactersArray) {
        [mutableDrinks addObject: character[@"favorite drink"]];
    }
    return mutableDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *mutableCharacters = [characterDictionary mutableCopy];
    [mutableCharacters setObject:@"I am a quote." forKey:@"quote"];
    return mutableCharacters;
}

@end
