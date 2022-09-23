//
//  ChatMate.swift
//  ChatMate
//
//  Created by Veer Singh on 9/22/22.
//

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
struct ChatMate: App {
    var body: some Scene {
        WindowGroup {
            StartView()
        }
    }
}
