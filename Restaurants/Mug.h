//
//  Mug.h
//  Restaurants
//


#import <Foundation/Foundation.h>

@interface Mug : NSObject
{
    UIColor* color;
    UIImage* logo;
    float maxCapacity;
    float currentCapacity;
    BOOL isClean; 
    // mug has own internal storage of isclean; change through methods
}
@property(readwrite) BOOL isClean;
@property(readwrite) float currentCapacity;
-(void) addLiquid:(float)amountOfLiquidToAdd;
-(float)currentCapacity; 
-(int) aMethod;
@end
