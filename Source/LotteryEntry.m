//
//  LotteryEntry.m
//  lottery
//
//  Created by Bryan Koroleski on 10/3/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"


@implementation LotteryEntry
- (id)init {
    return [self initWithEntryDate:[NSCalendarDate calendarDate]];
}

- (id)initWithEntryDate:(NSCalendarDate *)date {
    if(self = [super init]) {
        firstNumber = random() % 100 + 1;
        secondNumber = random() % 100 + 1;
        entryDate = [date retain];
    }
    return self;
}

- (void)setEntryDate:(NSCalendarDate *)date {
    entryDate = date;
}

- (NSCalendarDate *)entryDate {
    return entryDate;
}

- (int)firstNumber {
    return firstNumber;
}

- (int)secondNumber {
    return secondNumber;
}

- (NSString *)description {
    NSString *result;
    result = [NSString stringWithFormat:@"%@ = %d and %d", 
              [entryDate descriptionWithCalendarFormat:@"%m/%d/%Y"],
              firstNumber, secondNumber];
    return result;
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
    [entryDate release];
    [super dealloc];
}

@end
