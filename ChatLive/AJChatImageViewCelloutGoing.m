//
//  AJChatImageViewCelloutGoing.m
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import "AJChatImageViewCelloutGoing.h"

@implementation AJChatImageViewCelloutGoing

- (void)awakeFromNib {
    [super awakeFromNib];
    
}


-(void)configureCell:(AJChatMessage *)msg{
    _messageLabel.text = msg.message;
    _messageImage.image = [UIImage imageWithData:msg.attachments[0].data];
}

@end
