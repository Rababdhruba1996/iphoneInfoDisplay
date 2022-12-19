//
//  iPhone_Linux_ProjectApp.swift
//  iPhone_Linux_Project
//
//  Created by UXD on 2022/09/09.
//

import SwiftUI


import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct iPhone_Linux_ProjectApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
//            Extentioncommand()
//            Extention_name()
        }
    }
}
