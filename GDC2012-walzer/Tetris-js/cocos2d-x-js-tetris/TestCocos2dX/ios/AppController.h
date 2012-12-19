//
//  TestCocos2dXAppController.h
//  TestCocos2dX
//
//  Created by Rolando Abarca on 11/30/11.
//  Copyright Zynga Inc. 2011. All rights reserved.
//

@class RootViewController;

@interface AppController : NSObject <UIAccelerometerDelegate, UIAlertViewDelegate, UITextFieldDelegate,UIApplicationDelegate> {
    UIWindow *window;
    RootViewController	*viewController;
}

@end

