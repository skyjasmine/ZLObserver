//
//  ZLWeatherData.h
//  ZLObserver
//
//  Created by DingTalk on 2020/9/19.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLSubject.h"

@interface ZLWeatherData : NSObject<ZLSubject>

- (void)setTemp:(float)temp humidity:(float)humidity pressure:(float)pressure;

@end

