//
//  BGAppDelegate.m
//  BGUtilityLibrary
//
//  Created by AndrewShmig on 4/27/14.
//  Copyright (c) 2014 Bleeding Games. All rights reserved.
//

#import "BGAppDelegate.h"
#import "BGSettingsManager.h"

@implementation BGAppDelegate

- (BOOL)          application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    CODE -- begin
    BGSettingsManager *settingsManager = [BGSettingsManager shared];

    [settingsManager createDefaultSettingsFromDictionary:@{
            @"user": @{
                    @"info":@{
                            @"name": @"Andrew",
                            @"surname": @"Shmig",
                            @"age": @22
                    }
            }
    }];

    [settingsManager resetToDefaultSettings];

    [settingsManager setValue:@"+7 920 930 87 56"
              forSettingsPath:@"user.info.contacts.phone"];

    NSLog(@"%@", settingsManager);

    [settingsManager clear];

    NSLog(@"%@", settingsManager);
//    CODE - end

    return YES;
}

@end