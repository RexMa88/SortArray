//
//  main.m
//  SortByArray
//
//  Created by 新华视讯 on 15/9/1.
//  Copyright (c) 2015年 RexMa. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *array = @[[NSNumber numberWithInt:12],[NSNumber numberWithInt:23],[NSNumber numberWithInt:2],[NSNumber numberWithInt:15],[NSNumber numberWithInt:16],[NSNumber numberWithInt:8],[NSNumber numberWithInt:45],[NSNumber numberWithInt:32]];
        NSArray *sortArray = [array sortedArrayUsingSelector:@selector(compare:)];
        
        NSLog(@"The sortArray is %@",sortArray);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
