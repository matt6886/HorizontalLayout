//
//  HorizontalLayout.h
//  ZYXHorizontalFlowLayout
//
//  Created by 张哈哈 on 2018/6/23.
//  Copyright © 2018年 zyx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorizontalLayout : UICollectionViewFlowLayout
/** 每行item数量*/
@property (nonatomic,assign) NSInteger rowCount;
/** 每列item数量*/
@property (nonatomic,assign) NSInteger columCount;

@end
