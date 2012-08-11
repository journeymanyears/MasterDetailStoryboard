//
//  BaseDetailViewController.h
//  MasterDetailStoryboard


#import <UIKit/UIKit.h>

@interface BaseDetailViewController : UIViewController<UISplitViewControllerDelegate>

@property (strong, nonatomic) UIPopoverController *masterPopoverController;

@end
