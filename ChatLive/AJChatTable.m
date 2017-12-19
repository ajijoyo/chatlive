//
//  AJChatTable.m
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import "AJChatTable.h"

@implementation AJChatTable

@synthesize messages;

-(instancetype)init{
    if (self==[super init]) {
        [self setupUI];
    }
    return self;
}

-(void)setupUI{
    
    UIImageView *bg = [UIImageView new];
    bg.image = [UIImage imageNamed:@"bubble_background"];
    bg.frame = self.bounds;
    bg.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    layout.estimatedItemSize = CGSizeMake(320, 40);
    
    _collection = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:layout];
    _collection.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _collection.delegate = self;
    _collection.dataSource = self;
    _collection.backgroundView = bg;
    _collection.alwaysBounceVertical = YES;
    [_collection registerNib:[UINib nibWithNibName:@"AJChatViewCelloutGoing" bundle:nil] forCellWithReuseIdentifier:@"AJChatViewCelloutGoing"];
    [_collection registerNib:[UINib nibWithNibName:@"AJChatViewCellinGoing" bundle:nil] forCellWithReuseIdentifier:@"AJChatViewCellinGoing"];
    [_collection registerNib:[UINib nibWithNibName:@"AJChatImageViewCelloutGoing" bundle:nil] forCellWithReuseIdentifier:@"AJChatImageViewCelloutGoing"];
    [_collection registerNib:[UINib nibWithNibName:@"AJChatReplyViewCell" bundle:nil] forCellWithReuseIdentifier:@"AJChatReplyViewCell"];
    
    [self addSubview:_collection];
    
}

-(void)layoutSubviews{
    _collection.frame = self.bounds;
}

#pragma mark - table

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return messages.count;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (messages[indexPath.row].messageType) {
        case AJChatMessageTypeImage:
        {
            AJChatImageViewCelloutGoing *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AJChatImageViewCelloutGoing" forIndexPath:indexPath];
            [cell configureCell:messages[indexPath.row]];
            cell.isInGoing = messages[indexPath.row].senderId.intValue != 0;
            return cell;
        }
            break;
        case AJChatMessageTypeMessage:
        {
            AJChatViewCelloutGoing *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AJChatViewCelloutGoing" forIndexPath:indexPath];
            [cell configureCell:messages[indexPath.row]];
            
            cell.isInGoing = messages[indexPath.row].senderId.intValue != 0;
            return cell;
        }
            break;
        case AJChatMessageTypeReply:
        {
            
            AJChatReplyViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AJChatReplyViewCell" forIndexPath:indexPath];
            [cell configureCell:messages[indexPath.row]];
            
            cell.isInGoing = messages[indexPath.row].senderId.intValue != 0;
            return cell;
        }
        case AJChatMessageTypeVideo:
        {
            
        }
            break;
        case AJChatMessageTypeLocation:
        {
            
        }
            break;
            
        case AJChatMessageTypeAudio:
        {
            
        }
            break;
    }
    
    
    return nil;
    
}

@end
