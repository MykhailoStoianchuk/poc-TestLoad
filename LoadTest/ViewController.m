//
//  ViewController.m
//  LoadTest
//
//  Created by mrZluka on 12.03.2019.
//  Copyright © 2019 mrZluka. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()
@property (strong, nonatomic) WKWebView *webView;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Your message here");
    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
    WKUserContentController *controller = [[WKUserContentController alloc] init];
    
    configuration.userContentController = controller;
    [configuration.preferences setValue:@"TRUE" forKey:@"allowFileAccessFromFileURLs"];
    [configuration setValue:@TRUE forKey:@"allowUniversalAccessFromFileURLs"];
    self.webView = [[WKWebView alloc] initWithFrame:[UIScreen mainScreen].bounds configuration:configuration];
    self.webView.navigationDelegate = self;
    // Also if you'd have bouncing problem
    self.webView.scrollView.bounces = false;
    self.webView.scrollView.alwaysBounceVertical = false;
    [self.view addSubview:self.webView];
    
    NSString* productURL = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"res/index.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:productURL]];
    [self.webView loadRequest:request];
    NSLog(@"Your message here 1111");
}


@end
