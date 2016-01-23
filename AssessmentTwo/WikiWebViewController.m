//
//  WikiWebViewController.m
//  AssessmentTwo
//
//  Created by Richard Martin on 2016-01-23.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "WikiWebViewController.h"

@interface WikiWebViewController ()<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *wikiWebView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

@property NSString *urlWiki;

@end

@implementation WikiWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.name;
    
    self.urlWiki = [NSString stringWithFormat:@"https://en.wikipedia.org/wiki/%@", self.name];
    
    NSURL *url = [NSURL URLWithString:self.urlWiki];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.wikiWebView loadRequest:request];

    

}


-(void)webViewDidStartLoad:(UIWebView *)webView {
    
    [self.spinner startAnimating];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    
    [self.spinner stopAnimating];
    
}
    
@end
