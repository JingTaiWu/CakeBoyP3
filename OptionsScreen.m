//
//  Options.m
//  Cakeboy
//
//  Created by Marist User on 10/7/14.
//  Copyright 2014 JingtaiWu. All rights reserved.
//

#import "OptionsScreen.h"


@implementation OptionsScreen : CCLayer
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene* scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	OptionsScreen *layer = [OptionsScreen node];
	
	// add layer as a child to scene
	[scene addChild: layer];
    
	// return the scene
	return scene;
}

-(id) init {
    self = [super init];
    
    if(self) {
        // Get the screen dimension
        int screenWidth = [[CCDirector sharedDirector] winSize].width;
        int screenHeight = [[CCDirector sharedDirector] winSize].height;
        
        // Add the buttons to the menu
        CCMenuItem *audioButton =
        [CCMenuItemFont itemWithString:@"Audio" target:self selector:@selector(onAudio:)];
        
        CCMenuItem *skillButton =
        [CCMenuItemFont itemWithString:@"Skill Level" target:self selector:@selector(onSkillLevel:)];
        
        CCMenuItem *highScoreButton =
        [CCMenuItemFont itemWithString:@"High Score" target:self selector:@selector(onHighScore:)];
        
        CCMenuItem *backButton =
        [CCMenuItemFont itemWithString:@"Back" target:self selector:@selector(onBack:)];
        
        CCMenu *menu = [CCMenu menuWithItems:audioButton, skillButton, highScoreButton, backButton,nil];
        
        [menu alignItemsVertically];
        
        [menu setPosition:ccp(screenWidth / 2, screenHeight*0.25f)];
        // Add the menu to the layer
        [self addChild:menu];
    }
    
    return self;
}

-(void)onBack:(CCMenuItemFont *)button {
    // Goes back to the main screen
    [[CCDirector sharedDirector] popScene];
}

-(void)onAudio:(CCMenuItemFont *)button {
    // Goes to the audio screen
    [[CCDirector sharedDirector] pushScene:[AudioScreen scene]];
}

-(void)onHighScore:(CCMenuItemFont *)button {
    // Goes to the high score screen
    [[CCDirector sharedDirector] pushScene:[HighScoreScreen scene]];
}

-(void)onSkillLevel:(CCMenuItemFont *)button {
    // Goes to the skill level screen
    [[CCDirector sharedDirector] pushScene:[SkillLevelScreen scene]];
}
@end
