//
//  CustomSegmentControl.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct CustomSegmentControl: View {
    @Binding var currentInfoType: InfoType

    let infoTypes: [InfoType] = [.details, .tastingNotes, .history]

    var body: some View {
        HStack {
            ForEach(0..<3) { num in
                let type = infoTypes[num]
                if type == currentInfoType {
                    LatoText(
                        text: type.rawValue.capitalized,
                        color: Color.darkBackground
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 6)
                                .fill(Color.appYellowColor)
                        )
                        .padding(2)
                } else {
                    LatoText(text: type.rawValue.capitalized, color: .white.opacity(0.5))
                        .onTapGesture {
                            currentInfoType = type
                        }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(
            RoundedRectangle(cornerRadius: 6)
                .fill(Color.darkBackground)
        )
    }
}

#Preview {
    CustomSegmentControl(currentInfoType: .constant(.details))
}
