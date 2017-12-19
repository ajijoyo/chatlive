//
//  AJChatTableViewCell.m
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import "AJChatTableViewCell.h"

@implementation AJChatTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor clearColor];
    
}


-(void)setMessage:(AJChatMessage *)message{
 
    _messageLabel.text = message.message;
    _messageLabel.numberOfLines = 0;
    [_messageLabel sizeToFit];
    
    if(message.senderId.intValue == 0){
        _messageBubble.image = [UIImage imageNamed:@"bubble_outgoing"];
    }
    else{
        _messageBubble.image = [UIImage imageNamed:@"bubble_ingoing"];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
