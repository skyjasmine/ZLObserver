//
//  ZLWeatherData.m
//  ZLObserver
//
//  Created by DingTalk on 2020/9/19.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import "ZLWeatherData.h"

@interface ZLWeatherData ()

@property (nonatomic, assign) float temperature;
@property (nonatomic, assign) float humidity;
@property (nonatomic, assign) float pressure;
@property (nonatomic, strong) NSMutableArray *observers;
@property (nonatomic, strong) dispatch_queue_t queue;    //解决NSMutableArray的线程安全问题

@end

@implementation ZLWeatherData

- (instancetype)init {
    if (self = [super init]) {
        _queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        _observers = [[NSMutableArray alloc] init];
    }
    return self;
}


#pragma mark - ZLSubject
- (void)registerObserver:(id<ZLObserver>)observer {
    @synchronized (self.observers) {
        [self.observers addObject:observer];
    }
}

- (void)removeObserver:(id<ZLObserver>)observer {
    @synchronized (self.observers) {
        [self.observers removeObject:observer];
    }
}

- (void)notifyObservers {
    [self.observers enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id<ZLObserver> observer = (id<ZLObserver>)obj;
        if ([observer respondsToSelector:@selector(updateTemp:humidity:pressure:)]) {
            [observer updateTemp:self.temperature humidity:self.humidity pressure:self.pressure];
        }
    }];
}

#pragma mark - Update data
- (void)measurementsChanged {
    [self notifyObservers];
}

- (void)setTemp:(float)temp humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    self.pressure = pressure;
    [self measurementsChanged];
}

@end
