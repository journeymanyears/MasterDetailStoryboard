//
//  PrologueViewController.m
//  MasterDetailStoryboard


#import "PrologueViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"

@interface PrologueViewController ()

@end

@implementation PrologueViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self.splitViewController prepareReplaceSegueFor:segue.destinationViewController];
}

- (void)tapped: (UITapGestureRecognizer *)recognizer
{
    [self performSegueWithIdentifier:@"ShowNextScene" sender:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *singleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    [self.view addGestureRecognizer:singleTapRecognizer];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}



@end
