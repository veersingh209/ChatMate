//
//  AppDelegate.swift
//  ChatMate
//
//  Created by Veer Singh on 10/3/22.
//

import Foundation
import UIKit
import Firebase

class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
      [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
      FirebaseApp.configure()

    return true
  }
}
