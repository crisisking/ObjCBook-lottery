//
//  LotteryEntry.h
//  lottery
//
//  Created by Bryan Koroleski on 10/3/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface LotteryEntry : NSObject {

    NSCalendarDate *entryDate;
    int firstNumber;
    int secondNumber;
    
}

- (void)prepareRandomNumbers;
- (void)setEntryDate:(NSCalendarDate *)date;
- (NSCalendarDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;

@end
