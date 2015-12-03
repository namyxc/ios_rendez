//
//  Exercise1.m
//  rendez
//
//  Created by rentit on 2015. 11. 09..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "Exercise1.h"

@implementation Exercise1

+(NSArray*) orderNumbers:(NSArray*)inputArray{
//    return [inputArray sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
//        NSNumber *num1 = obj1;
//        NSNumber *num2 = obj2;
//
//        return [num1 compare:num2];
//    }];
    
    NSMutableArray* array = [NSMutableArray arrayWithArray:inputArray];
    for (int i = 0; i < array.count ; i++) {
        for (int j = i + 1; j < array.count; j++) {
            if (array[i] > array[j]) {
                id swap = array[i];
                array[i] = array[j];
                array[j] = swap;
            }
        }
    }
    return [array copy] ;
}

@end
