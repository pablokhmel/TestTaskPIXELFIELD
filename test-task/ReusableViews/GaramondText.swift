//
//  CustomText.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct GaramondText: View {
    @State var text: String
    @State var size: CGFloat = 16
    @State var weight: FontWeight = .regular
    @State var color: Color = Color.white

    var body: some View {
        Text(text)
            .font(.ebGaramound(size: size, weight: weight))
            .foregroundStyle(color)
    }
}

#Preview {
    GaramondText(text: "Hello")
}
