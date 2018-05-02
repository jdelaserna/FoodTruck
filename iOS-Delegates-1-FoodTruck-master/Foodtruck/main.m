//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "AnotherCook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
        
        Cook *cook = [[Cook alloc] init];
        [truckA setDelegate:cook];
        [truckA.delegate foodTruck:truckA priceForFood:@"bao"];
    
        AnotherCook *aCook = [AnotherCook new];
        [truckB setDelegate:aCook];
        [truckB.delegate foodTruck:truckB priceForFood:@"shortbread"];
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    
    return 0;
}
