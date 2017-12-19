//
//  AJChatViewCell.m
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import "AJChatViewCelloutGoing.h"

@implementation AJChatViewCelloutGoing

- (void)awakeFromNib {
    [super awakeFromNib];
    _maxWidthConstraint.constant = [UIScreen mainScreen].bounds.size.width - 48;
}

-(void)configureCell:(AJChatMessage*)msg{
 
    _messageLabel.text = msg.message;
        
}


@end
