//
//  Colors.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

extension Color {
    // Reusable
    static let background = Color.init(red: 11 / 255, green: 21 / 255, blue: 25 / 255)

    // Welcome
    enum Welcome {
        static let welcomeBackground = Color.init(red: 18 / 255, green: 35 / 255, blue: 41 / 255)
        static let scanBottleButtonColor = Color.init(red: 212 / 255, green: 154 / 255, blue: 0 / 255)
        static let haveAccountLabel = Color.init(red: 184 / 255, green: 189 / 255, blue: 191 / 255)
        static let signInButton = Color.init(red: 255 / 255, green: 185 / 255, blue: 1 / 255)
    }
}
