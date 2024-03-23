//
//  test_taskApp.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

@main
struct test_taskApp: App {
    var body: some Scene {
        WindowGroup {
            if UserDefaults.standard.bool(forKey: "has_logged") {
                MainScreen()
            } else {
                WelcomeView()
            }
        }
    }
}
