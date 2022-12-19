//
//  iphoneInfoDisplayApp.swift
//  iphoneInfoDisplay
//
//  Created by UXD on 2022/10/12.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, NSApplicationDelegate {
//  func application(_ application: NSApplication,
//                   didFinishLaunchingWithOptions launchOptions: [NSApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//
//    return true
//  }
    
    func applicationDidFinishLaunching(_ notification: Notification) {
       // FirebaseApp.configure()
        
    }
    
}

@main
struct iphoneInfoDisplayApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
