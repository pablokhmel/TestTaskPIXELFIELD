//
//  FullInfoTopView.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct FullInfoTopView: View {
    @Binding var presentationMode: PresentationMode
    var body: some View {
        HStack {
            LatoText(text: "Genesis Collection")
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                .background(
                    Color.background
                )
            Spacer()
            Button {
                presentationMode.dismiss()
            } label: {
                Image.FullInfoScreen.close
                    .padding(8)
                    .background(
                        Circle()
                            .fill(Color.background)
                    )
            }
        }
    }
}
