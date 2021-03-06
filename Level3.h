//
//  Level3.h
//  Cakeboy
//
//  Created by Marist User on 11/9/14.
//  Copyright 2014 JingtaiWu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Level2.h"

#define RID_POWER_UP 61

@interface Level3 : Level2 {
    CCTMXLayer* powerUpLayer;
}

/** Gets a scene for this layer */
+ (CCScene *) scene;

/** Constructor */
- (id) init;

/** Initializes the world */
- (void) initWorld;

- (BOOL) isPowerUp: (int) gid;

- (void) handlePowerUpCollision;

- (void) update:(ccTime)dt;
@end
