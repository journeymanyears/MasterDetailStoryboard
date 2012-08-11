//
//  MasterViewController.m
//  MasterDetailStoryboard


#import "MasterViewController.h"

#import "UISplitViewController+DetailViewSwapper.h"

@interface MasterViewController ()

@end

@implementation MasterViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"ShowPrologue"]){
        [self.splitViewController prepareReplaceSegueFor:segue.destinationViewController];
    }
}


- (void)awakeFromNib
{
    self.clearsSelectionOnViewWillAppear = NO;
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
