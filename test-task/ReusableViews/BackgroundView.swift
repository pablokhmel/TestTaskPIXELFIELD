//
//  BackgroundView.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        GeometryReader { geo in
            Image.backgrounds
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geo.size.width)
                .background(
                    Color.background
                )
                .ignoresSafeArea()
        }
    }
}

protocol BackgroundViewProtocol {

}

#Preview {
    BackgroundView()
}
