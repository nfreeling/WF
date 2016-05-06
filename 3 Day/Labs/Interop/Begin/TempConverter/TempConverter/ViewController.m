//
//  ViewController.m
//  TempConverter
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _fResultLabel.text = @"";
    _cResultLabel.text = @"";
    _kResultLabel.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertAction:(id)sender {

    _fResultLabel.text = @"Not implemented";
    _cResultLabel.text = @"Not implemented";
    _kResultLabel.text = @"Not implemented";
    
    [(UIButton *)sender setTitle:@"Convert Again" forState:UIControlStateNormal];
}

@end
