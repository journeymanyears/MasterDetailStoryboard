//
//  UISplitViewController+DetailViewSwapper.m
//  MasterDetailStoryboard


#import "UISplitViewController+DetailViewSwapper.h"
#import "BaseDetailViewController.h"

@implementation UISplitViewController (DetailViewSwapper)

- (UIViewController*)getCurrentDetailViewController{
    return [[self.viewControllers lastObject] topViewController];
}

- (void)movePopoverButtonFrom: (UIViewController *) currentDetailViewController to: (UIViewController *) newDetailViewController
{
    UIBarButtonItem *popoverButton = currentDetailViewController.navigationItem.leftBarButtonItem;
    currentDetailViewController.navigationItem.leftBarButtonItem = nil;
    
    newDetailViewController.navigationItem.leftBarButtonItem = popoverButton;
}

- (void)copyMasterPopoverControllerFrom: (UIViewController *) currentDetailViewController to: (UIViewController *) newDetailViewController
{
    if ([currentDetailViewController isKindOfClass:[BaseDetailViewController class]]
        && [newDetailViewController isKindOfClass:[BaseDetailViewController class]])
    {
        UIPopoverController *masterPopoverController = ((BaseDetailViewController *) currentDetailViewController).masterPopoverController;
        ((BaseDetailViewController *)newDetailViewController).masterPopoverController = masterPopoverController;
    }
}

- (void)dismissMasterPopoverFrom: (UIViewController *)detailViewController{
    
    if ([detailViewController isKindOfClass:[BaseDetailViewController class]])
        [[(BaseDetailViewController*)detailViewController masterPopoverController]dismissPopoverAnimated:YES];
}


- (void)prepareReplaceSegueFor: (UINavigationController *)detailNavViewController{
    UIViewController *currentDetailViewController = [self getCurrentDetailViewController];
    UIViewController *newDetailViewController = detailNavViewController.topViewController;
    
    [self movePopoverButtonFrom: currentDetailViewController to: newDetailViewController];

    [self copyMasterPopoverControllerFrom: currentDetailViewController to: newDetailViewController];
    
    [self dismissMasterPopoverFrom: newDetailViewController];
    
    self.delegate = (UIViewController<UISplitViewControllerDelegate> *)newDetailViewController;
}




@end
