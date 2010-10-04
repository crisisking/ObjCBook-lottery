//
//  main.m
//  lottery
//
//  Created by Bryan Koroleski on 10/3/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main (int argc, const char * argv[]) {

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSCalendarDate *now = [[NSCalendarDate alloc] init];
    srandom(time(NULL));
    
    NSMutableArray *array;
    int i;
    
    array = [[NSMutableArray alloc] init];
    
    for(i=0; i<10; ++i) {
        NSCalendarDate *iWeeksFromNow;
        iWeeksFromNow = [now dateByAddingYears:0 months:0 days:(i * 7) hours:0 minutes:0 seconds:0];
        
        LotteryEntry *newEntry = [[LotteryEntry alloc] initWithEntryDate:iWeeksFromNow];
        
        [array addObject:newEntry];
    }
    
    for(LotteryEntry *entryToPrint in array) {
        NSLog(@"%@", entryToPrint);
    }
    
    [pool drain];
    return 0;
}

