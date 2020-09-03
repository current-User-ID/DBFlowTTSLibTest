//
//  DBAuthentication.m
//  DBSocketRocketKit
//
//  Created by 李明辉 on 2020/8/21.
//  Copyright © 2020 biaobei. All rights reserved.
//

#import "DBAuthentication.h"
#import "DBNetworkHelper.h"

NSString *const getTokenURL = @"https://openapi.data-baker.com/oauth/2.0/token";


@implementation DBAuthentication

+ (void)setupClientId:(NSString *)clientId clientSecret:(NSString *)clientSecret  block:(DBAuthenticationBlock)block{
    
    NSAssert(block != nil, @"必须设置block");
    
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"client_id"] = clientId;
    parameters[@"client_secret"] = clientSecret;
    parameters[@"grant_type"] = @"client_credentials";
    
    [DBNetworkHelper getWithUrlString:getTokenURL parameters:parameters success:^(NSDictionary * _Nonnull data) {
        NSString *accessToken = data[@"access_token"];
        if (!accessToken) {
            static NSInteger rectryCount = 2;
            if (rectryCount >0) {
                [self setupClientId:clientId clientSecret:clientSecret block:^(NSString * _Nonnull token, NSError * _Nonnull error) {
                }];
                rectryCount--;
            }else {
                NSError * error = [NSError errorWithDomain:@"tokenError" code:80001 userInfo:@{@"info":@"token获取失败"}];
                block(nil,error);
            }
        }else {
            block(accessToken,nil);
        }
        
    } failure:^(NSError * _Nonnull error) {
        block(nil,error);
    }];
    
}



@end
