//
//  AppDelegate.swift
//  NotificationA8P
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, ESTBeaconManagerDelegate {

    var window: UIWindow?

    let beaconNotificationsManager = BeaconNotificationsManager()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        ESTConfig.setupAppID("notification-a8p", andAppToken: "00c394abe5856a7b1b7e8ea95e7d9659")
        
        ESTConfig.enableMonitoringAnalytics(true)

        self.beaconNotificationsManager.enableNotificationsForBeaconID(
            BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 41092, minor: 31320),
            enterMessage: "Hello,beacon 1.",
            exitMessage: "Goodbye,beacon 1."
        )
        
        self.beaconNotificationsManager.enableNotificationsForBeaconID(
            BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 25496, minor: 36025),
            enterMessage: "Hello,beacon 2.",
            exitMessage: "Goodbye,beacon 2."
        )
        
        self.beaconNotificationsManager.enableNotificationsForBeaconID(
            BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 31711, minor: 64228),
            enterMessage: "Hello,beacon 3.",
            exitMessage: "Goodbye,beacon 3."
        )
        
        self.beaconNotificationsManager.enableNotificationsForBeaconID(
            BeaconID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D", major: 3147, minor: 37441),
            enterMessage: "Hello,beacon 4.",
            exitMessage: "Goodbye,beacon 4."
        )
        
        self.beaconNotificationsManager.enableNotificationsForBeaconID(
            BeaconID(UUIDString: "D0D3FA86-CA76-45EC-9BD9-6AF4104621A9", major: 59112, minor: 51776),
            enterMessage: "enter DOOR",
            exitMessage: "exit Door"
        )
        
        self.beaconNotificationsManager.enableNotificationsForBeaconID(
            BeaconID(UUIDString: "D0D3FA86-CA76-45EC-9BD9-6AF4F73B9E0C", major: 59603, minor: 39004),
            enterMessage: "enter DOG",
            exitMessage: "exit DOG"
        )


        // NOTE: "exit" event has a built-in delay of 30 seconds, to make sure that the user has really exited the beacon's range. The delay is imposed by iOS and is non-adjustable.

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
