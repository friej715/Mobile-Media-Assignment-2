//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize chefLabel;
@synthesize phoneLabel;
@synthesize reviewLabel;
@synthesize ageLabel;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    restaurant = [[Restaurant alloc] init];
    // creating a new restaurant; alloc init to create a new one
    //restaurant.address = @"My Address"; // dot syntax works for properties
  
    
    cuisineLabel.text = [restaurant cuisineType];
    
    // glue code connecting view to model--restaurant is model, get address by calling 
    addressLabel.text = [restaurant address];
    navigationHeader.title = [restaurant name];
    chefLabel.text = [restaurant chefName];
    phoneLabel.text = [restaurant phoneNumber];
    reviewLabel.text = [restaurant review];
    ageLabel.text = [NSString stringWithFormat:@"%i (%i years ago)", restaurant.yearOpened, [restaurant age]];
}

- (void)viewDidUnload
{
    [self setAddressLabel:nil];
    [self setNavigationHeader:nil];
    [self setCuisineLabel:nil];
    [self setChefLabel:nil];
    [self setPhoneLabel:nil];
    [self setReviewLabel:nil];
    [self setAgeLabel:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
