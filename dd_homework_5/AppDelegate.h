//
//  AppDelegate.h
//  dd_homework_5
//
//  Created by Влад Купряков on 02.11.17.
//  Copyright © 2017 Влад Купряков. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

