//
//  Cook.m
//  Foodtruck
//
//  Created by Jorge Serna on 2018-05-02.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Cook.h"

@implementation Cook

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    NSLog(@"TRUCK %@", food);
    double result = 0;
    if ([food isEqualToString:(@"bao")]) {
        result = 5;
        return result;
    } else if ([food isEqualToString:(@"shortbread")]) {
        result = 4;
        return result;
    } else {
        return result;
    }
}

@end
