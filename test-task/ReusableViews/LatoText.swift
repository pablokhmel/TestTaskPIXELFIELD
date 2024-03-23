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
    @State var weight: FontWeight = .regular
    @State var alignment: TextAlignment = .center

    var body: some View {
        Text(text)
            .font(.lato(size: size, weight: weight))
            .foregroundStyle(color)
            .multilineTextAlignment(alignment)
    }
}

#Preview {
    LatoText(text: "Hello")
}
