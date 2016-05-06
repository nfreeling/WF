//
//  ViewController.h
//  TempConverter
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *scaleSegControl;
@property (weak, nonatomic) IBOutlet UILabel *fResultLabel;
@property (weak, nonatomic) IBOutlet UILabel *cResultLabel;
@property (weak, nonatomic) IBOutlet UILabel *kResultLabel;

- (IBAction)convertAction:(id)sender;

@end

