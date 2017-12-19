//
//  AJChatReplyViewCell.m
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import "AJChatReplyViewCell.h"

@implementation AJChatReplyViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}


-(void)configureCell:(AJChatMessage *)msg{
    _messageLabel.text = msg.message;
}


@end
