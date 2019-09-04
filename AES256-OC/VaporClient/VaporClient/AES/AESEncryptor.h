//
//  AESEncryptor.h
//  VaporClient
//
//  Created by luomeng on 2018/7/16.
//  Copyright © 2018年 tpf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AESEncryptor : NSObject

/**
 * AES/CBC/Padding5 加密
 */
+ (NSString *)encrypt:(NSString *)plainTxt password:(NSString *)password iv:(NSString *)iv;

/**
 * AES/CBC/Padding5 解密
 */
+ (NSString *)decrypt:(NSString *)encrypedTxt password:(NSString *)password iv:(NSString *)iv;

@end
