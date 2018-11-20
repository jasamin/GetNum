
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,CVConsumptionType) {
    CVEatTyp = 0,//食
    CVClothType,//衣
    CVHouseType,//住
    CVTransportationType,//行
    CVGiftType, //礼物人情
    CVSchooling,//学习提升
    CVMedical,//医疗保健
    CVRecreation,//娱乐聚会
    CVInsurance,//保险费用
    CVOthorType //其他
};

@interface CVArabicNumeralsGetter : NSObject

//MARK: - --- 中文数字转阿拉伯数字（方法一）
+ (void)chineseNumbersReturnArabicNumerals:(NSString *)chnStr result:(void(^)(NSArray *numArr,double num))callBack ;
//获取分类
- (void)catalogBySubject:(NSString *)string result:(void(^)(CVConsumptionType type))result;
@end

