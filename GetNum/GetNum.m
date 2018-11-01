//
//  GetNum.m
//  GetNum
//
//  Created by Hanrun on 2018/10/19.
//  Copyright © 2018年 Carvin. All rights reserved.
//

#import "GetNum.h"

@implementation GetNum
+(double)ggg:(NSString *)str {
    return 0;
}

+ (NSString *)arabicNumberalsFromChineseNumberals:(NSString *)arabic{
    
    NSMutableDictionary * mdic =[[NSMutableDictionary alloc]init];
    [mdic setObject:[NSNumber numberWithInt:100000000] forKey:@"亿"];
    [mdic setObject:[NSNumber numberWithInt:10000000] forKey:@"千万"];
    [mdic setObject:[NSNumber numberWithInt:1000000] forKey:@"百万"];
    [mdic setObject:[NSNumber numberWithInt:100000] forKey:@"十万"];
    [mdic setObject:[NSNumber numberWithInt:10000] forKey:@"万"];
    [mdic setObject:[NSNumber numberWithInt:1000] forKey:@"千"];
    [mdic setObject:[NSNumber numberWithInt:100] forKey:@"百"];
    [mdic setObject:[NSNumber numberWithInt:10] forKey:@"十"];
    [mdic setObject:[NSNumber numberWithInt:9] forKey:@"九"];
    [mdic setObject:[NSNumber numberWithInt:8] forKey:@"八"];
    [mdic setObject:[NSNumber numberWithInt:7] forKey:@"七"];
    [mdic setObject:[NSNumber numberWithInt:6] forKey:@"六"];
    [mdic setObject:[NSNumber numberWithInt:5] forKey:@"五"];
    [mdic setObject:[NSNumber numberWithInt:4] forKey:@"四"];
    [mdic setObject:[NSNumber numberWithInt:3] forKey:@"三"];
    [mdic setObject:[NSNumber numberWithInt:2] forKey:@"二"];
    [mdic setObject:[NSNumber numberWithInt:2] forKey:@"两"];
    [mdic setObject:[NSNumber numberWithInt:1] forKey:@"一"];
    [mdic setObject:[NSNumber numberWithInt:0] forKey:@"零"];
    
    //替换中文
    
    if ([arabic containsString:@"块"]){
        arabic = [arabic stringByReplacingOccurrencesOfString:@"块" withString:@"."];
    }else if ([arabic containsString:@"点"]) {
        arabic = [arabic stringByReplacingOccurrencesOfString:@"点" withString:@"."];
    }
    
    arabic = [arabic stringByReplacingOccurrencesOfString:@"毛" withString:@""];
    
    
    
    //    NSLog(@"%@",mdic);
    
    
    BOOL flag=YES;//yes表示正数，no表示负数
    
    NSString * s=[arabic substringWithRange:NSMakeRange(0, 1)];
    
    NSRange range = [arabic rangeOfString:@"."];
    //小数点后面
    NSLog(@"%@",arabic);
    
    NSString *tempString;
    if (range.length >0) {
        tempString = [arabic substringFromIndex:range.location+1];
    }
    NSLog(@"%@",arabic);
    NSLog(@"%@",tempString);
    
    if([s isEqualToString:@"负"]){
        
        flag=NO;
        
    }
    
    int i=0;
    
    if(!flag){
        
        i=1;
        
    }
    
    int sum=0;//和
    
    int num[20];//保存单个汉字信息数组
    
    for(int i=0;i<20;i++){//将其全部赋值为0
        
        num[i]=0;
        
    }
    
    int k=0;//用来记录数据的个数
    
    
    
    //如果是负数，正常的数据从第二个汉字开始，否则从第一个开始
    
    for(;i<[arabic length];i++){
        
        NSString * key=[arabic substringWithRange:NSMakeRange(i, 1)];
        
        int tmp=[[mdic valueForKey:key] intValue];
        
        num[k++]=tmp;
        
    }
    
    //将获得的所有数据进行拼装
    if (range.length>0) {
        arabic = [arabic substringToIndex:range.location];
    }
    for(int i=0;i<arabic.length;i++){
        
        if(num[i]<=10&&num[i+1]>=10){
            
            sum+=num[i]*num[i+1];
            
            i++;
            
        }else{
            
            sum+=num[i];
            
        }
        
    }
    
    NSString * result=[[NSString alloc]init];;
    
    if(flag){//如果正数
        
        NSLog(@"%d",sum);
        
        result=[NSString stringWithFormat:@"%d",sum];
        
    }else{//如果负数
        
        NSLog(@"-%d",sum);
        
        result=[NSString stringWithFormat:@"-%d",sum];
        
    }
    
    if(tempString.length>0){
        result = [result stringByAppendingString:@"."];
        for (NSUInteger i = range.location+1; i<=range.location+tempString.length; i++) {
            result = [result stringByAppendingString:[NSString stringWithFormat:@"%d",num[i]]];
        }
    }
    
    return result;
    
}

@end
