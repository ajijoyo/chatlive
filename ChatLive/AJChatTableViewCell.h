//
//  AJChatTableViewCell.h
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AJChatMessage.h"

@interface AJChatTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *messageBubble;


-(void)setMessage:(AJChatMessage*)message;

@end
