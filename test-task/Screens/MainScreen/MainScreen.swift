//
//  MainScreen.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI



struct MainScreen: View {
    @State var chosenScreen = TabbarScreen.collection
    var body: some View {
        VStack(spacing: 0) {
            TabView {
                switch chosenScreen {
                case .scan:
                    Spacer()
                        .background(.red)
                case .collection:
                    CollectionScreen()
                case .shop:
                    Spacer()
                        .background(.green)
                case .settings:
                    Spacer()
                        .background(.blue)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .edgesIgnoringSafeArea(.all)
            TabbarView(chosenScreen: $chosenScreen)
        }
        .background(
            Color.darkBackground
        )
    }
}

#Preview {
    MainScreen()
}
