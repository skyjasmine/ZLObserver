//
//  main.m
//  ZLObserver
//
//  Created by DingTalk on 2020/9/19.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLWeatherStation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ZLWeatherStation *weatherStation = [[ZLWeatherStation alloc] init];
        [weatherStation start];
    }
    return 0;
}
