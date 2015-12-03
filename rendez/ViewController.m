//
//  ViewController.m
//  rendez
//
//  Created by rentit on 2015. 11. 09..
//  Copyright © 2015. rentit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *myTextview;

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


- (IBAction)printTapped:(id)sender {
    NSLog(@"%@", self.myTextview.text);
}
- (IBAction)sortTapped:(id)sender {
    NSArray* words = [self.myTextview.text componentsSeparatedByString:@" "];
    
    words = [words sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return  [(NSString* )obj1 compare:(NSString *)obj2];
    }];
    
    NSLog(@"Words: %@", words);
}


@end
