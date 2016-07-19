//
//  Algorithm.m
//  Algorithm
//
//  Created by Huang Yanan on 16/7/19.
//  Copyright © 2016年 Huang Yanan. All rights reserved.
//

#import "Algorithm.h"

@implementation Algorithm

+ (NSString *)addBigNumbers:(NSString *)lhsSource rhs:(NSString *)rhsSource {
    ///补全位数
    NSInteger lLength = lhsSource.length;
    NSInteger rLength = rhsSource.length;
    NSInteger len = lLength-rLength;
    for (int i = 0; i < ABS(len); i++) {
        if (len > 0) {
            rhsSource = [NSString stringWithFormat:@"0%@",rhsSource];
        }
        else {
            lhsSource = [NSString stringWithFormat:@"0%@",lhsSource];
        }
    }
    
    ///按位相加
    NSMutableString *resultStr = [NSMutableString string];
    ///进位
    int carryBit = 0;
    for (NSUInteger i = lhsSource.length; i > 0; i--) {
        unichar l = [lhsSource characterAtIndex:i-1];
        unichar r = [rhsSource characterAtIndex:i-1];
        unichar z = l-'0' + r-'0' + carryBit;
        int resultChar = z % 10 ;
        carryBit = z/10;
        [resultStr insertString:[NSString stringWithFormat:@"%@",@(resultChar)] atIndex:0];
    }
    ///最后一位进位别忘记加
    if (carryBit) {
        [resultStr insertString:[NSString stringWithFormat:@"%@",@(carryBit)] atIndex:0];
    }
    return resultStr;
    
}

@end
