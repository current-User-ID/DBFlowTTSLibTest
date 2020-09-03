//
//  DBZSocketRocketUtility.h
//  SUN
//
//  Created by linxi on 19/11/6.
//  Copyright © 标贝. All rights reserved.
//

#import <Foundation/Foundation.h>

 
extern NSString * const kDBZNeedPayOrderNote;
extern NSString * const kDBZWebSocketDidOpenNote;
extern NSString * const kDBZWebSocketDidCloseNote;
extern NSString * const kDBZWebSocketdidReceiveMessageNote;
extern NSString * const kDBZWebSocketdidConnectFailed;

@interface DBZSocketRocketUtility : NSObject

// 超时时间
@property(nonatomic,assign) NSTimeInterval timeOut;

/** 开始连接 */
- (void)DBZWebSocketOpenWithURLString:(NSString *)urlString;

/** 关闭连接 */
- (void)DBZWebSocketClose;

/** 发送数据 */
- (void)sendData:(id)data;


+ (DBZSocketRocketUtility *)instance;

@end
