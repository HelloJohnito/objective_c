//
//  AppDelegate.h
//  harvard_lecture_5
//
//  Created by John  Ito lee on 10/14/18.
//  Copyright © 2018 Johnito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

