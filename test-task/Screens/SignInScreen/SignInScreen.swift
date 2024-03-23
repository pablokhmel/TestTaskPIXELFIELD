//
//  SignInScreen.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct SignInScreen: View {
    @State var email: String

    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack {
                Button {

                } label: {
                    Image.SignIn.backArrow
                }

                Spacer()
            }

            GaramondText(text: "Sign In", size: 32, weight: .medium)

            VStack(spacing: 16) {
                SignInTextField()
                SignInTextField()
            }

            AppYellowButton(title: "Continue") {

            }

            AppLabelPair(firstTitle: "Can't sign in?", secondTitle: "Recover password") {

            }
            .frame(maxWidth: .infinity)

            Spacer()
        }
        .padding(
            EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        )
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.SignIn.background
                .ignoresSafeArea()
        }
    }
}

struct SignInTextField: View {
    var body: some View {
        VStack(alignment: .leading) {
            LatoText(text: "Email", size: 12, color: Color.appYellowColor)
            LatoText(text: "Base")
            Color.appYellowColor
                .frame(height: 1)
        }
    }
}

#Preview {
    SignInScreen(email: "yep")
}
