//
//  AJChatMessage.h
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AJChatAttachment.h"

typedef NS_ENUM(NSInteger,AJChatMessageType){
    AJChatMessageTypeMessage,
    AJChatMessageTypeReply,
    AJChatMessageTypeLocation,
    AJChatMessageTypeImage,
    AJChatMessageTypeVideo,
    AJChatMessageTypeAudio,
};

@interface AJChatMessage : NSObject

-(instancetype)initMessage:(NSString *)message senderId:(NSString *)senderId andDate:(NSDate *)date andMessageType:(AJChatMessageType)type;

@property(nonatomic) NSString *senderId;
@property(nonatomic) NSString *message;
@property(nonatomic) NSDate *date;
@property(nonatomic) AJChatMessageType messageType;
@property(nonatomic) NSArray<AJChatAttachment*> *attachments;

@end
