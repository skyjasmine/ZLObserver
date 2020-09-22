//
//  ZLCurrentConditionsDisplay.h
//  ZLObserver
//
//  Created by DingTalk on 2020/9/21.
//  Copyright © 2020 DingTalk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLSubject.h"
#import "ZLObserver.h"
#import "ZLDisplayElement.h"

@interface ZLCurrentConditionsDisplay : NSObject <ZLObserver, ZLDisplayElement>

- (instancetype)initWithSubject:(id<ZLSubject>)weatherData;

@end

