//
//  ViewController.m
//  ObjCSwift
//
//  Created by Don Mag on 4/13/21.
//

#import "ViewController.h"

#import "ObjCSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	UILabel *label = [UILabel new];
	label.translatesAutoresizingMaskIntoConstraints = NO;
	label.backgroundColor = [UIColor yellowColor];
	[self.view addSubview:label];
	[label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
	[label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;

	NSString *test1 = @"<b>This is bold</b>";
	NSAttributedString *test2 = [[NSAttributedString alloc] initWithHtml:test1];
	
	label.attributedText = test2;
}


@end
