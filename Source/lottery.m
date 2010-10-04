//
//  main.m
//  lottery
//
//  Created by Bryan Koroleski on 10/3/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    NSMutableArray *array;
    int i;
    
    array = [[NSMutableArray alloc] init];
    
    for(i=0; i<10; ++i) {
        NSNumber *newNumber = [[NSNumber alloc] initWithInt:(i*3)];
        [array addObject:newNumber];
    }
    
    for(i=0; i<10; ++i) {
        NSNumber *numberToPrint = [array objectAtIndex:i];
        NSLog(@"The number at %d is %@", i, numberToPrint);
    }
    
    [pool drain];
    return 0;
}

