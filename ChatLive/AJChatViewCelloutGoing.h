//
//  AJChatViewCell.h
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AJChatMessage.h"
#import "SelfSizingMaxWidthCollectionViewCell.h"

@interface AJChatViewCelloutGoing : SelfSizingMaxWidthCollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *maxWidthConstraint;
@property(nonatomic) UIImageView *messageBubble;
@property(nonatomic,assign) BOOL isCalculate;

-(void)configureCell:(AJChatMessage*)msg;
@end
