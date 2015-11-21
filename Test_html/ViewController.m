//
//  ViewController.m
//  Test_html
//
//  Created by Young on 15/11/21.
//  Copyright © 2015年 tigger. All rights reserved.
//

#define kWidth [UIScreen mainScreen].bounds.size.width
#define kHeight [UIScreen mainScreen].bounds.size.height


#import "ViewController.h"
#import "YLView.h"


@interface ViewController (){

    YLView *ModelView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(UIButton *)sender {
    
    
    [UIView animateWithDuration:1 animations:^{
        
        ModelView = [[YLView alloc] initWithFrame:CGRectMake(0, 0, kWidth, kWidth)];
        
        ModelView.center = self.view.center;
        
        ModelView.backgroundColor = [UIColor redColor];
        
        ModelView.hidden = NO;

        [self.view addSubview:ModelView];
        
    }];
   
    
    
    
}

@end
