//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"

@implementation Restaurant
@synthesize address, name, cuisineType;

// whenever you make a class, it doesn't need an init method--you just might want one. i think it's the instantiation
- (id)init {
    self = [super init];
    if (self) {
        name = @"Henry Public";
        address = @"329 Henry St\nNew York, NY 11201";
        yearOpened = 1986;
        cuisineType = @"American";
    }
    return self;
}

-(int) age {
    return 2012 - yearOpened;
}


@end
