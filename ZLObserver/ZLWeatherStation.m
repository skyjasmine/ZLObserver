//
//  ZLWeatherStation.m
//  ZLObserver
//
//  Created by DingTalk on 2020/9/21.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLWeatherStation.h"
#import "ZLWeatherData.h"
#import "ZLCurrentConditionsDisplay.h"


@implementation ZLWeatherStation

- (void)start {
    ZLWeatherData *weatherData = [[ZLWeatherData alloc] init];
    ZLCurrentConditionsDisplay *currentDisplay = [[ZLCurrentConditionsDisplay alloc] initWithSubject:weatherData];
    [weatherData setTemp:80 humidity:65 pressure:30.4f];
}


@end
