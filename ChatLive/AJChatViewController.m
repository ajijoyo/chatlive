//
//  AJChatViewController.m
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import "AJChatViewController.h"

@interface AJChatViewController ()

@end

@implementation AJChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _chatTable = [AJChatTable new];
    _chatTable.frame = self.view.bounds;
    _chatTable.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_chatTable];

    
    
    AJChatMessage *msg = [[AJChatMessage alloc]initMessage:@"lorem ipsum sum ipsum mas ums " senderId:@"1" andDate:[NSDate date] andMessageType:AJChatMessageTypeMessage];
    
    AJChatMessage *msg1 = [[AJChatMessage alloc]initMessage:@"lorem ipsum sum ipsum mas ums lorem ipsum sum ipsum mas ums lorem ipsum sum ipsum mas ums " senderId:@"0" andDate:[NSDate date] andMessageType:AJChatMessageTypeMessage];
    
    AJChatMessage *msg2 = [[AJChatMessage alloc]initMessage:@"lorem ipsum " senderId:@"1" andDate:[NSDate date] andMessageType:AJChatMessageTypeMessage];
    
    
    AJChatAttachment *attch = [AJChatAttachment new];
    attch.data = UIImageJPEGRepresentation([UIImage imageNamed:@"deal.jpg"], 1);
    
    AJChatMessage *msg3 = [[AJChatMessage alloc]initMessage:@"lorem ipsum sum ipsum mas ums lorem ipsum sum ipsum mas ums lorem ipsum sum ipsum mas ums" senderId:@"0" andDate:[NSDate date] andMessageType:AJChatMessageTypeImage];
    msg3.attachments = @[attch];
    
    AJChatMessage *msg6 = [[AJChatMessage alloc]initMessage:@"lorem ipsum sum ipsum mas ums lorem ipsum sum ipsum mas ums lorem ipsum sum ipsum mas ums" senderId:@"1" andDate:[NSDate date] andMessageType:AJChatMessageTypeImage];
    msg6.attachments = @[attch];
    
    AJChatMessage *msg4 = [[AJChatMessage alloc]initMessage:@"lorem ipsum " senderId:@"0" andDate:[NSDate date] andMessageType:AJChatMessageTypeReply];
    
    AJChatMessage *msg5 = [[AJChatMessage alloc]initMessage:@"lorem ipsum sum ipsum mas ums lorem " senderId:@"1" andDate:[NSDate date] andMessageType:AJChatMessageTypeReply];
    
    _chatTable.messages = @[msg,msg1,msg3,msg2,msg4,msg5,msg6];
    [_chatTable.collection reloadData];
    
}



@end
