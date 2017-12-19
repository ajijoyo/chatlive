//
//  SelfSizingMaxWidthCollectionViewCell.m
//  ChatLive
//
//  Created by Dealjava on 12/19/17.
//  Copyright © 2017 originesia. All rights reserved.
//

#import "SelfSizingMaxWidthCollectionViewCell.h"

@implementation SelfSizingMaxWidthCollectionViewCell

-(void)awakeFromNib{
    self.backgroundColor = [UIColor clearColor];
    
    [super awakeFromNib];
}

-(void)setIsInGoing:(BOOL)isInGoing{
    _isInGoing = isInGoing;
    if (_isInGoing) {
        
        self.contentView.transform = CGAffineTransformMakeScale(-1, 1);
        
        for (UIView *vim in self.contentView.subviews) {
            
            if ([vim isKindOfClass:[UILabel class]]) {
                UILabel *lbl = (UILabel*)vim;
                lbl.textAlignment = NSTextAlignmentLeft;
            }
            
            if(vim.tag == 99){
                vim.transform = CGAffineTransformIdentity;
            }
            else{
                vim.transform = CGAffineTransformMakeScale(-1, 1);
            }
        }
    }
    else{
        self.contentView.transform = CGAffineTransformIdentity;
        
        for (UIView *vim in self.contentView.subviews) {
            vim.transform = CGAffineTransformIdentity;
            
            if ([vim isKindOfClass:[UILabel class]]) {
                UILabel *lbl = (UILabel*)vim;
                lbl.textAlignment = NSTextAlignmentRight;
            }
        }
    }
}

-(UICollectionViewLayoutAttributes*)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes{
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    CGSize size = [self.contentView systemLayoutSizeFittingSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 1)];
    
    CGRect newFrame = layoutAttributes.frame;
    newFrame.size = size;
    
    layoutAttributes.frame = newFrame;
    
    return layoutAttributes;
}

@end
