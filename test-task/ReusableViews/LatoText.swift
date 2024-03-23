//
//  LatoText.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct LatoText: View {
    @State var text: String
    @State var size: CGFloat = 16
    @State var color: Color = .white

    var body: some View {
        Text(text)
            .font(.lato(size: size, weight: .medium))
            .foregroundStyle(color)
    }
}

#Preview {
    LatoText(text: "Hello")
}
