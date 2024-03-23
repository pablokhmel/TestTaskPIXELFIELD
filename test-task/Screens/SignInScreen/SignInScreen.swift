//
//  SignInScreen.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct SignInScreen: View {
    @State var emailString: String = ""
    @State var passwordString: String = ""

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image.SignIn.backArrow
                }

                Spacer()
            }

            GaramondText(text: "Sign In", size: 32, weight: .medium)

            VStack(spacing: 16) {
                SignInTextField(title: "Email", text: $emailString)
                SignInTextField(title: "Password", text: $passwordString, hasSecurity: true)
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

#Preview {
    SignInScreen()
}
