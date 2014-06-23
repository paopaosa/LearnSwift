//
//  CommonDefines.swift
//  learnSwift
//
//  Created by macpps on 14-6-10.
//  Copyright (c) 2014 paopaosa. All rights reserved.
//

import UIKit

func isSimulator ()->Bool {
    #if os(iOS) && arch(i386)
        return true
    #else
        return false
    #endif
}

let debug = isSimulator()

let kDelegate = UIApplication.sharedApplication().delegate

/*
*  System Versioning Preprocessor Macros

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
*/

/*
*  Usage

if SYSTEM_VERSION_LESS_THAN(@"7.0") {
    //work under 7.0
}

if SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"6.0") {
    //work iOS >= 6.0
}

*/

func SYSTEM_VERSION_EQUAL_TO(version: NSString) ->Bool{
    return UIDevice.currentDevice().systemVersion.compare(version, options:.NumericSearch) == NSComparisonResult.OrderedSame
}

func SYSTEM_VERSION_GREATER_THAN(version: NSString) ->Bool{
    return UIDevice.currentDevice().systemVersion.compare(version, options:.NumericSearch) == NSComparisonResult.OrderedDescending
}

func SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(version: NSString) ->Bool{
    return UIDevice.currentDevice().systemVersion.compare(version, options:.NumericSearch) != NSComparisonResult.OrderedAscending
}

func SYSTEM_VERSION_LESS_THAN(version: NSString) ->Bool{
    return UIDevice.currentDevice().systemVersion.compare(version, options:.NumericSearch) == NSComparisonResult.OrderedAscending
}

func SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(version: NSString) ->Bool{
    return UIDevice.currentDevice().systemVersion.compare(version, options:.NumericSearch) != NSComparisonResult.OrderedDescending
}

/*
 * #define iOS7               SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")
 */

func isIOS7 () ->Bool {
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO("7.0")
}

func isIOS8 () ->Bool {
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO("8.0")
}

// 设置应用访问路径
func AppURL () ->NSString! {
    if debug {
        return "http://211.111.111.111/"
    }
    else {
        return "http://222.222.222.222/"
    }
}

func printLog(logString: NSString) {
    if debug {
        println(logString)
    }
}

