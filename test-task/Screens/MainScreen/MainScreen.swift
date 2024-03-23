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
        GeometryReader { geo in
            VStack {
                Spacer()
                TabbarView(chosenScreen: $chosenScreen)
            }
            .background(
                Color.darkBackground
            )
        }
    }
}

#Preview {
    MainScreen()
}
