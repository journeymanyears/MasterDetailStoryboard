//
//  UISplitViewController+DetailViewSwapper.h
//  MasterDetailStoryboard


#import <UIKit/UIKit.h>

@interface UISplitViewController (DetailViewSwapper)

- (void)prepareReplaceSegueFor: (UINavigationController *)detailNavViewController;

- (void)dismissMasterPopoverFrom: (UIViewController *)detailViewController;

@end
