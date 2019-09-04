//
//  ViewController.m
//  VaporClient
//
//  Created by luomeng on 2018/7/3.
//  Copyright © 2018年 tpf. All rights reserved.
//

#import "ViewController.h"
#import "NSData+AES.h"
#import "GTMBase64.h"
#import "AESEncryptor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *aesKey = @"7854156156611111"; // 16位
    NSString *aesIV = nil; // 为nil时，自动填充为 0000000000000000
    
    NSString *link = @"https://www.google.com";
    NSString *encrypedLink = [AESEncryptor encrypt:link password:aesKey iv:aesIV];
    
    NSLog(@"encryped = %@", encrypedLink);
    
    NSString *plainTxt = [AESEncryptor decrypt:encrypedLink password:aesKey iv:aesIV];
    NSLog(@"plain = %@", plainTxt);
    
}

- (IBAction)sendAct:(id)sender {
    
}

- (IBAction)postAct:(id)sender {
}


@end
