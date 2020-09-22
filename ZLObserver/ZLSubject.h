//
//  ZLSubject.h
//  ZLObserver
//
//  Created by DingTalk on 2020/9/19.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLObserver.h"

@protocol ZLSubject <NSObject>

@optional
- (void)registerObserver:(id<ZLObserver>)observer;
- (void)removeObserver:(id<ZLObserver>)observer;
- (void)notifyObservers;


@end

