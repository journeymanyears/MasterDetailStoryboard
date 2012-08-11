//
//  Scene1DViewController.m
//  MasterDetailStoryboard


#import "Scene1DViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"

@interface Scene1DViewController ()

@end

@implementation Scene1DViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self.splitViewController prepareReplaceSegueFor:segue.destinationViewController];
}

- (void)doubleTapped: (UITapGestureRecognizer *)recognizer
{
    [self performSegueWithIdentifier:@"ShowPreviousScene" sender:nil];
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
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTapped:)];
    doubleTapRecognizer.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:doubleTapRecognizer];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end
