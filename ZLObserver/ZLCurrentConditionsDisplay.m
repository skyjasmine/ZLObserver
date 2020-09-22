//
//  ZLCurrentConditionsDisplay.m
//  ZLObserver
//
//  Created by DingTalk on 2020/9/21.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLCurrentConditionsDisplay.h"

@interface ZLCurrentConditionsDisplay ()

@property (nonatomic, assign) float temperature;
@property (nonatomic, assign) float humidity;
@property (nonatomic, strong) id<ZLSubject> weatherData;
@end

@implementation ZLCurrentConditionsDisplay

- (instancetype)initWithSubject:(id<ZLSubject>)weatherData {
    if (self = [super init]) {
        self.weatherData = weatherData;
        [weatherData registerObserver:self];
    }
    return self;
}

#pragma mark - ZLDisplayElement
- (void)display {
    NSLog(@"Current conditions: temperature:%f, humidity:%f", self.temperature, self.humidity);
}

#pragma mark - ZLObserver
- (void)updateTemp:(float)temp humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    [self display];
}

@end
