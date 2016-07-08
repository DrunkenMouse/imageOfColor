//
//  ViewController.m
//  通过颜色生成图片
//
//  Created by 王奥东 on 16/6/29.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    imgView.image = [self createImageWithColor:[UIColor purpleColor] andSize:CGSizeMake(imgView.frame.size.width, imgView.frame.size.height)];
    [self.view addSubview:imgView];
}

//需要手动设置图片的大小
-(UIImage*)createImageWithColor:(UIColor*)color andSize:(CGSize)size{
    
    CGRect rect=CGRectMake(0.0f,0.0f,size.width,size.height);
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context=UIGraphicsGetCurrentContext();CGContextSetFillColorWithColor(context, [color CGColor]);
    
    CGContextFillRect(context, rect);
    
    UIImage * theImage=UIGraphicsGetImageFromCurrentImageContext();UIGraphicsEndImageContext();
    
    return theImage;
    
}
@end
