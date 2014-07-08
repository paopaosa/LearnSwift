//
//  AppDelegate.swift
//  learnSwift
//
//  Created by macpps on 14-6-4.
//  Copyright (c) 2014 paopaosa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        // Override point for customization after application launch.
        println(AppURL())
        printLog("Hello wolrd")
        debugPrintln("Hello World")
//        var start: CFAbsoluteTime = CFAbsoluteTimeGetCurrent()
//        var container : String[] = []
//        let sb = "A string of text"
//        for (var i=0; i<100_000; i++) {
//            container.append(sb)
//        }
//        println("\(CFAbsoluteTimeGetCurrent() - start)")
        
        func funcTest(a:Int, closure: (Int) -> Int) ->Int {
            var value = a + closure(a)
            println("The avlue is: \(value)")
            return value
        }
        
//        funcTest(20) {
//            return $0 + 10
//        }
        var number : Int? = funcTest(21, { s1 in
            return s1 + 10
            })
//        assert(number < 50, "No more than 50")
        
        let vString = StringWork()
        if vString.containsString("Hello Swift", compareString: "Swift") {
            println("Here is swift string.")
        }
        
        if  "hello Objective-C".lowercaseString.rangeOfString("objective-c") {
            println("got objective-c")
        }
        
        if vString.containsLowercaseString("Helo NAS", searchString: "nas") {
            println("it contains nas")
        }
        
//        vString.swapTwoValues(&a, value2: &b)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

