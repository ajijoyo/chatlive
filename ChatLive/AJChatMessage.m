//
//  AJChatMessage.m
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import "AJChatMessage.h"

@implementation AJChatMessage

+(instancetype)message:(NSString *)message senderId:(NSString *)senderId andDate:(NSDate *)date andMessageType:(AJChatMessageType)type{
    
    AJChatMessage *msg = [[AJChatMessage alloc]initMessage:message senderId:senderId andDate:date andMessageType:type];
    return msg;
}


-(instancetype)initMessage:(NSString *)message senderId:(NSString *)senderId andDate:(NSDate *)date andMessageType:(AJChatMessageType)type{
    if (self==[super init]) {
        _message = message;
        _senderId = senderId;
        _date = date;
        _messageType = type;
    }
    return self;
}

@end
