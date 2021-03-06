//
//  AppDelegate.h
//  CarAssist
//
//  Created by 0witt on 30.11.12.
//  Copyright (c) 2012 Gruppe Fear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ServiceCategoryViewController.h"
#import "WarningCategoryViewController.h"
#import "ProfilController.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// Main ViewContainer
@property (nonatomic) UITabBarController* tabBarController;

// Warning Controllers
@property (nonatomic) WarningCategoryViewController* warningViewController;
@property (nonatomic) UINavigationController* warningNavigationController;

// Service Controllers
@property (nonatomic) ServiceCategoryViewController* serviceViewController;
@property (nonatomic) UINavigationController* serviceNavigationController;


// Profil Controllers
@property (nonatomic) ProfilController* profilController;
@property (nonatomic) UINavigationController* ProfilNavigationController;
@end
