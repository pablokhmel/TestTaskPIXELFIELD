//
//  AppYellowButton.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct AppYellowButton: View {
    var title: String
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            GaramondText(text: title, weight: .semibold, color: Color.black)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
                .background(
                    Color.appYellowColor
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    AppYellowButton(title: "Hello") {
        print("a")
    }
}
