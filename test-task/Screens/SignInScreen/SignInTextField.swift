//
//  SignInTextField.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct SignInTextField: View {
    var title: String
    @Binding var text: String
    var hasSecurity: Bool = false

    @State var isSecured = true

    var body: some View {
        VStack(alignment: .leading) {
            LatoText(text: title, size: 12, color: Color.appYellowColor)
            HStack {
                if hasSecurity && isSecured {
                    SecureField(text: $text) {
                        LatoText(text: text)
                    }
                    .foregroundStyle(Color.white)
                } else {
                    TextField(text: $text) {
                        LatoText(text: text)
                    }
                    .foregroundStyle(Color.white)
                }


                if hasSecurity {
                    Button {
                        isSecured = !isSecured
                    } label: {
                        Image.SignIn.eyeImage
                    }
                }
            }

            Color.appYellowColor
                .frame(height: 1)
        }
    }
}
