//
//  BViewController.m
//  SVGGifViewDemo
//
//  Created by YunInfo on 13-11-18.
//  Copyright (c) 2013年 YunInfo. All rights reserved.
//

#import "BViewController.h"
#import "SvGifView.h"

@interface BViewController ()
@property(nonatomic,retain)SvGifView * svgView;

@end

@implementation BViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL * fileUrl = [[NSBundle mainBundle]URLForResource:@"quqi" withExtension:@"gif"];
    self.svgView = [[SvGifView alloc]initWithCenter:CGPointMake(self.view.bounds.size.width/2, 130) fileURL:fileUrl withWidth:20 andHeight:20];
    self.svgView.backgroundColor= [UIColor blackColor];
    self.svgView.autoresizingMask =UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    [self.view addSubview:self.svgView];
    
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [self.svgView startGif];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
