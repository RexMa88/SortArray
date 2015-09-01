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
        //another method sort
        NSMutableArray *arrayOne = [[NSMutableArray alloc] initWithObjects:@"24",@"12",@"48",@"35",@"7",@"2",@"3",@"65", nil];
        
        NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
        NSArray *sortArrayOne = [arrayOne sortedArrayUsingDescriptors:[NSArray arrayWithObjects:sortDescriptor, nil]];
        
        NSLog(@"The sortArray is %@",sortArray);
        NSLog(@"Another sortArray is %@",sortArrayOne);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
