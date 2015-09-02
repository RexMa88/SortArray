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
        NSMutableArray *arrayTwo = [[NSMutableArray alloc] initWithObjects:[NSNumber numberWithInt:50],[NSNumber numberWithInt:23],[NSNumber numberWithInt:35],[NSNumber numberWithInt:3],[NSNumber numberWithInt:14],[NSNumber numberWithInt:20], nil];
        
        NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
        NSSortDescriptor *descSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
        
        NSArray *sortArrayOne = [arrayOne sortedArrayUsingDescriptors:[NSArray arrayWithObjects:sortDescriptor, nil]];
        NSArray *sortArrayTwo = [arrayTwo sortedArrayUsingDescriptors:[NSArray arrayWithObjects:sortDescriptor, nil]];
        NSArray *sortArratThree = [arrayTwo sortedArrayUsingDescriptors:[NSArray arrayWithObjects:descSortDescriptor, nil]];
        
        NSLog(@"The sortArray is %@",sortArray);
        NSLog(@"Another sortArray is %@",sortArrayOne);
        NSLog(@"The sort number Array is %@",sortArrayTwo);
        NSLog(@"The Desc Array is %@",sortArratThree);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
