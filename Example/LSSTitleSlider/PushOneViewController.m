

//
//  PushOneViewController.m
//  LSSTitleSlide
//
//  Created by Lushanshan on 2019/5/15.
//  Copyright © 2019 Lushanshan. All rights reserved.
//

#import "PushOneViewController.h"
#import "ChildViewController.h"

@interface PushOneViewController ()<LSSTitleSlideViewControllerDataSource,LSSTitleSlideViewControllerDelegate>

@end

@implementation PushOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = self;
    self.delegate = self;
    self.config.normalTitleColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1];
    self.config.selectTitleColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
    self.config.slideHeight = 2;
    self.config.slideColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
    self.config.currentIndex = 0;
    self.config.style = LSSTitleSlideStyleCenter;
    
    //使带有scrollview的页面拥有侧滑手势，否则会引起手势冲突
    [self.scrollView.panGestureRecognizer requireGestureRecognizerToFail:self.navigationController.interactivePopGestureRecognizer];
    self.navigationItem.title = @"";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    // Do any additional setup after loading the view.
}
-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)clickWithIndex:(NSInteger)index{
    NSLog(@"%ld",(long)index);
}
-(NSArray*)childViewControllersWithNavVC:(LSSTitleSlideViewController *)slideVC{
    return @[[[UIViewController alloc] init] ,[[UIViewController alloc] init] ,[[UIViewController alloc] init]];
}
-(NSArray*)titlesWithNavVC:(LSSTitleSlideViewController *)slideVC{
    return @[@"111",@"222",@"333"];
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
