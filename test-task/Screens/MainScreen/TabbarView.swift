//
//  TabbarView.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

enum TabbarScreen: String {
    case scan
    case collection
    case shop
    case settings

    func getImage() -> Image {
        switch self {
        case .scan:
            Image.MainScreen.scan

        case .collection:
            Image.MainScreen.collection

        case .shop:
            Image.MainScreen.shop

        case .settings:
            Image.MainScreen.settings
        }
    }
}

struct TabbarView: View {
    @Binding var chosenScreen: TabbarScreen
    let tabbarScreens: [TabbarScreen] = [.scan, .collection, .shop, .settings]
    
    var body: some View {
        HStack {
            ForEach(0..<4) { screen in
                let screen = tabbarScreens[screen]
                Button {
                    chosenScreen = screen
                } label: {
                    VStack {
                        screen.getImage()
                        Text(screen.rawValue.capitalized)
                            .font(.system(size: 12))
                    }
                    .frame(maxWidth: .infinity)
                }
                .foregroundStyle(
                    screen == chosenScreen ? .white : .white.opacity(0.5)
                )
            }
        }

        .frame(height: 80)
        .frame(maxWidth: .infinity)
        .background(
            Color.background
        )
    }
}

#Preview {
    TabbarView(chosenScreen: .constant(.scan))
}
