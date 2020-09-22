//
//  ZLObserver.h
//  ZLObserver
//
//  Created by DingTalk on 2020/9/19.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZLObserver <NSObject>

@optional
- (void)updateTemp:(float)temp humidity:(float)humidity pressure:(float)pressure;

@end
