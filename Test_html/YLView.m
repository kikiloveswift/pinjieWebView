//
//  YLView.m
//  Test_html
//
//  Created by Young on 15/11/21.
//  Copyright © 2015年 tigger. All rights reserved.
//

#import "YLView.h"

#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height

@implementation YLView{

    UIWebView *ylWebView;
    
    //储存webView的高度
    CGFloat height;
    
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //
        
        [self initView];
    }

    return self;

}

/**
 *  创建WebView
 */
- (void)initView{
    
    ylWebView = [[UIWebView alloc] initWithFrame:self.bounds];
    
    //根据屏幕尺寸显示WEB
//    ylWebView.scalesPageToFit = YES;
    
    ylWebView.delegate = self;
    
    [self loadUrl];
    
    [self addSubview:ylWebView];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectZero];
    button.tag = 101;
    [button setTitle:@"确定" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor orangeColor];

    [self addSubview:button];

}


- (void)loadUrl{
    
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [ylWebView loadRequest:request];


}


#pragma mark-----UIWebViewDelegate

-(void)webViewDidFinishLoad:(UIWebView *)webView{
height =
 [[webView stringByEvaluatingJavaScriptFromString:@"document.body.scrollHeight;"] floatValue];
    
    CGRect frame = webView.frame;
    webView.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, height);
    self.contentSize = CGSizeMake(kWidth, height + 50);
    UIButton *button = (UIButton *)[self viewWithTag:101];
    button.frame = CGRectMake(0, height, kWidth, 50);
    
    


}

- (void)btnClick:(UIButton *)btn{
    
    [self removeFromSuperview];


}

@end
