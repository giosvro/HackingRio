//
//  AppDelegate.swift
//  HackingRio
//
//  Created by Giovanni Severo Barros on 28/07/18.
//  Copyright © 2018 Giovanni Severo Barros. All rights reserved.
//

import UIKit
import Stripe
import UserNotifications


@UIApplicationMain
class AppDelegate: UIResponder,UIApplicationDelegate,UNUserNotificationCenterDelegate {

    var window: UIWindow?


//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//        // Override point for customization after application launch.
//        return true
//    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        STPPaymentConfiguration.shared().publishableKey = "pk_test_XHx11oe4zLXs3n6g4xtjTs6r"
        // do any other necessary launch configuration
//        window = UIWindow(frame: UIScreen.main.bounds)
//        let mainViewController = LoginVC()
//        window?.rootViewController = mainViewController
//        window?.makeKeyAndVisible()
                return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        scheduleNotification()
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    public func scheduleNotification() {
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        
        
        
        let content = UNMutableNotificationContent()
        content.title = "Olá"
        content.body = "Não esqueça das suas consultas marcadas, entraremos em contato assim que a consulta estiver mais proxima"
        content.categoryIdentifier = "alarm"
        content.userInfo = ["customData": "fizzbuzz"]
        
                content.sound = UNNotificationSound.default()
        
        
        
        let pauseAction = UNNotificationAction(identifier: "Pause", title: "Tap to pause your current read session", options: .foreground)
        
        let finishAction = UNNotificationAction(identifier: "Finish", title: "Tap to finish your current read session", options: .foreground)
        
        let category = UNNotificationCategory(identifier: "alarm", actions: [pauseAction,finishAction], intentIdentifiers: [])
        
        //defino quando vou mandar a notificação
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        center.setNotificationCategories([category])
        center.add(request)
    }

}

