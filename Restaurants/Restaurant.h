//
//  Restaurant.h
//  Restaurants
//

#import <Foundation/Foundation.h>

@interface Restaurant : NSObject
{
    NSString* address;
    NSString* cuisineType;
    NSString* name;
    NSString* chefName;
    NSString* phoneNumber;
    NSString* review;
    int yearOpened;

    
}
@property(readwrite, strong) NSString* address;
@property(readwrite, strong) NSString* name;
//need to have property stuff in header for it to be synthesized!
@property(readwrite, strong) NSString* cuisineType;
@property(readwrite, strong) NSString* chefName;
@property(readwrite, strong) NSString* phoneNumber;
@property(readwrite, strong) NSString* review;
@property(readwrite) int yearOpened;


@end
