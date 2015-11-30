//
//  AppDelegate.swift
//  ReactNativeWithPods
//
//  Created by Yohei Okubo on 11/19/15.
//  Copyright © 2015 bko. All rights reserved.
//

import UIKit
import React

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject:AnyObject]?) -> Bool {

        let rootView = RCTRootView(bundleURL: NSURL(string: Config().jsCodeLocation ),
                                   moduleName: Config().moduleName,
                                   initialProperties: nil,
                                   launchOptions: nil)
        self.window = UIWindow.init(frame: UIScreen.mainScreen().bounds)
        let ic = ItemController()

        let myViewController = ViewController()
        myViewController.view = rootView

        self.window!.rootViewController = myViewController
        self.window!.makeKeyAndVisible()

        NSURLProtocol.registerClass(MyProtocol)
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {}
    func applicationDidEnterBackground(application: UIApplication) {}
    func applicationWillEnterForeground(application: UIApplication) {}
    func applicationDidBecomeActive(application: UIApplication) {}
    func applicationWillTerminate(application: UIApplication) {}
}

