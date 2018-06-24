//
//  ViewController.m
//  ZYXHorizontalFlowLayout
//
//  Created by 张哈哈 on 2018/6/23.
//  Copyright © 2018年 zyx. All rights reserved.
//

#import "ViewController.h"

#import "HorizontalLayout.h"

#define edgeDistance 10

@interface ViewController ()<UICollectionViewDataSource>
@property (nonatomic,strong) UICollectionView *collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI {
    HorizontalLayout *layout = [[HorizontalLayout alloc] init];
    layout.itemSize = CGSizeMake((self.view.bounds.size.width - 4 * 10)/3, 170/2.0);
    layout.rowCount = 3;
    layout.columCount = 2;
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    layout.minimumLineSpacing = 10;
    layout.minimumInteritemSpacing = 10;
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 160, self.view.bounds.size.width, 200) collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor lightGrayColor];
    self.collectionView.dataSource = self;
    [self.view addSubview:self.collectionView];
    
    [self.collectionView registerClass:[CustomCell class] forCellWithReuseIdentifier:@"cell"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor greenColor];
    cell.textLabel.text = [NSString stringWithFormat:@"%lu",indexPath.item];
    return cell;
}

@end

@interface CustomCell()

@end

@implementation CustomCell
- (instancetype)init {
    if (self = [super init]) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    UILabel *label = [[UILabel alloc] initWithFrame:self.bounds];
    self.textLabel = label;
    [self addSubview:label];
}

@end
