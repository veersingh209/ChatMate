//
//  ChatMate.swift
//  ChatMate
//
//  Created by Veer Singh on 9/22/22.
//

import SwiftUI
import FirebaseCore


@main
struct ChatMate: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            StartView()
        }
    }
}
