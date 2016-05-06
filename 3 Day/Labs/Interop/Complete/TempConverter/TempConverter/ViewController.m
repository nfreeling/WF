//
//  ViewController.m
//  TempConverter
//

#import "ViewController.h"
#import "TempConverter-Swift.h"

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
    Temperature *t = [[Temperature alloc] initWithScale:_scaleSegControl.selectedSegmentIndex
                                                  value:_tempField.text.doubleValue];
    
    TempConverter *tc = [[TempConverter alloc] init];
    
    Temperature *f = [tc convert:t toScale:TempScaleF];
    Temperature *c = [tc convert:t toScale:TempScaleC];
    Temperature *k = [tc convert:t toScale:TempScaleK];
    
    _fResultLabel.text = [NSString stringWithFormat:@"%.2f", f.value];
    _cResultLabel.text = [NSString stringWithFormat:@"%.2f", c.value];
    _kResultLabel.text = [NSString stringWithFormat:@"%.2f", k.value];
    
    [(UIButton *)sender setTitle:@"Convert Again" forState:UIControlStateNormal];
}

@end
