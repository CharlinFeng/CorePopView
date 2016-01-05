//
//  ViewController.m
//  CorePopView
//
//  Created by 冯成林 on 16/1/5.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CorePopView.h"

@interface ViewController ()

@property (nonatomic,strong) CorePopView *popView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    NSLog(@"展示");
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    redView.backgroundColor = [UIColor redColor];
    
    self.popView = [CorePopView popupWithContentView:redView showType:KLCPopupShowTypeBounceInFromTop dismissType:KLCPopupDismissTypeSlideOutToBottom maskType:KLCPopupMaskTypeDimmed dismissOnBackgroundTouch:YES dismissOnContentTouch:YES];
    
    [self.popView showAtCenter:self.view.center inView:nil withDuration:3];

}


@end
