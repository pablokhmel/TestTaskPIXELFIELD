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

                Button {

                } label: {
                    GaramondText(text: "Scan bottle", weight: .semibold, color: Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(
                            Color.Welcome.scanBottleButtonColor
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }

                HStack(spacing: 24) {
                    LatoText(text: "Have an account?", color: Color.Welcome.haveAccountLabel)
                    GaramondText(text: "Sign in here", weight: .medium, color: Color.Welcome.signInButton)
                }
            }
            .padding(
                EdgeInsets(top: 24, leading: 16, bottom: 24, trailing: 16)
            )
            .background(
                Color.Welcome.welcomeBackground
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
