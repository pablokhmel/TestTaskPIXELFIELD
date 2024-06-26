//
//  Images.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

extension Image {
    static let backgrounds = Image("backgrounds")

    enum SignIn {
        static let backArrow = Image("backArrow")
        static let eyeImage = Image("eye")
    }

    enum MainScreen {
        static let scan = Image("scanImage")
        static let collection = Image("collectionImage")
        static let shop = Image("shopImage")
        static let settings = Image("settingsImage")
    }

    enum CollectionScreen {
        static let notifications = Image("notifications")
    }

    enum FullInfoScreen {
        static let close = Image("closeButton")
        static let genuine = Image("genuineIcon")
        static let moreInfo = Image("moreInfo")
    }
}
