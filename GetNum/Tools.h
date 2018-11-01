//
//  Tools.h
//  OCRTest
//
//  Created by leeson on 2018/4/20.
//  Copyright © 2018年 李斯芃 ---> 512523045@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,CVConsumptionType) {
    CVEatTyp = 0,//食
    CVClothType,//衣
    CVHouseType,//住
    CVTransportationType,//行
    CVGiftType, //礼物人情
    CVOthorType //其他
};

@interface Tools : NSObject

//MARK: - --- 中文数字转阿拉伯数字（方法一）
+ (double)chineseNumbersReturnArabicNumerals:(NSString *)chnStr;

///MARK: - --- 文字处理
/*
+ (NSString *)wordsDeal:(NSString *)str;
*/

///MAKR: - --- 文字提取匹配
+ (NSString *)textMatching:(NSString *)str;

//MARK: - --- 中文数字转阿拉伯数字（方法二）
+(NSInteger)elseFun:(NSString *)chnStr;

@end
