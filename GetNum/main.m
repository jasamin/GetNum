//
//  main.m
//  GetNum
//
//  Created by Hanrun on 2018/10/19.
//  Copyright © 2018年 Carvin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GetNum.h"
#import "CVArabicNumeralsGetter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //[GetNum arabicNumberalsFromChineseNumberals:@"六万七千八百五十四块七毛五一"];
        //NSLog(@"%3f",[CVArabicNumeralsGetter chineseNumbersReturnArabicNumerals:@"买三两白菜用了三百六十五万七千八百五十四块七毛五分"]);
        NSLog(@"%3f",[CVArabicNumeralsGetter chineseNumbersReturnArabicNumerals:@"买3斤白菜用了35块6毛7"]);
        //NSLog(@"%3f",[CVArabicNumeralsGetter chineseNumbersReturnArabicNumerals:@"五分"]);
        //NSLog(@"%3f",[CVArabicNumeralsGetter chineseNumbersReturnArabicNumerals:@"七毛"]);
        //NSLog(@"%@",[CVArabicNumeralsGetter textMatching:@"买三斤白菜用了三百六十五万七千八百五十四块七毛五一"]);
        //NSLog(@"%3f",[CVArabicNumeralsGetter chineseNumbersReturnArabicNumerals:@"三百零五万七千八百五十四块七毛五一"]);
    }
    return 0;
}

