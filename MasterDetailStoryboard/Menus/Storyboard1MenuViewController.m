//
//  Storyboard1MenuViewController.m
//  MasterDetailStoryboard


#import "Storyboard1MenuViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"

@interface Storyboard1MenuViewController ()

@end

@implementation Storyboard1MenuViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

        [self.splitViewController prepareReplaceSegueFor:segue.destinationViewController];

}
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}


@end
