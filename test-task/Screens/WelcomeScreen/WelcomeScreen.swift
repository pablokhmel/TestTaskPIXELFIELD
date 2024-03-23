//
//  WelcomeScreen.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            BackgroundView()
            VStack(spacing: 24) {
                VStack(spacing: 8) {
                    GaramondText(text: "Welcome!", size: 32, weight: .medium)
                    LatoText(text: "Text text text")
                }

                AppYellowButton(title: "Scan bottle") {
                    
                }

                AppLabelPair(firstTitle: "Have an account?", secondTitle: "Sign In first") {
                    
                }
            }
            .padding(
                EdgeInsets(top: 24, leading: 16, bottom: 24, trailing: 16)
            )
            .background(
                Color.Welcome.background
            )
            .padding(
                EdgeInsets(top: 0, leading: 16, bottom: 30, trailing: 16)
            )
        }
    }
}

#Preview {
    WelcomeView()
}
