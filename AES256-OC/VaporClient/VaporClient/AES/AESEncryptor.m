//
//  AESEncryptor.m
//  VaporClient
//
//  Created by luomeng on 2018/7/16.
//  Copyright © 2018年 tpf. All rights reserved.
//

#import "AESEncryptor.h"
#import "NSData+AES.h"
#import "GTMBase64.h"

@implementation AESEncryptor

/**
 * AES/CBC/Padding5 加密
 */
+ (NSString *)encrypt:(NSString *)plainTxt password:(NSString *)password iv:(NSString *)iv {
    
    if (iv == nil) {
        iv = @"0000000000000000";
    }
    
    NSData *data = [plainTxt dataUsingEncoding:NSUTF8StringEncoding];
    //加密
    data = [data AES128EncryptWithKey:password iv:iv];
    
    NSString *encodeStr = [GTMBase64 stringByEncodingData:data];
    
    return encodeStr;
}

/**
 * AES/CBC/Padding5 解密
 */
+ (NSString *)decrypt:(NSString *)encrypedTxt password:(NSString *)password iv:(NSString *)iv {
    
    if (iv == nil) {
        iv = @"0000000000000000";
    }
    
    NSData *data = [GTMBase64 decodeString:encrypedTxt];
    data = [data AES128DecryptWithKey:password iv:iv];
    NSString *plainTxt = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    return plainTxt;
}

@end
