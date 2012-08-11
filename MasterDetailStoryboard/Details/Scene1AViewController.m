//
//  Scene1AViewController.m
//  MasterDetailStoryboard


#import "Scene1AViewController.h"
#import "UISplitViewController+DetailViewSwapper.h"

@interface Scene1AViewController ()

@end

@implementation Scene1AViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self.splitViewController prepareReplaceSegueFor:segue.destinationViewController];
}

- (void)tapped:(UITapGestureRecognizer *)recognizer
{
    [self performSegueWithIdentifier:@"ShowNextScene" sender:nil];
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
    UITapGestureRecognizer *singleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTapped:)];
    doubleTapRecognizer.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:doubleTapRecognizer];
    [self.view addGestureRecognizer:singleTapRecognizer];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end
