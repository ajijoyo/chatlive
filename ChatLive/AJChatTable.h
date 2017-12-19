//
//  AJChatTable.h
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AJChatMessage.h"
#import "AJChatViewCelloutGoing.h"
#import "AJChatImageViewCelloutGoing.h"
#import "AJChatReplyViewCell.h"

@interface AJChatTable : UIView<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    
}

@property(nonatomic,readonly) UICollectionView *collection;
@property(nonatomic) NSMutableArray<AJChatMessage*> *messages;
@end
