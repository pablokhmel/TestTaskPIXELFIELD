//
//  FullInfoView.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

enum InfoType: String {
    case details
    case tastingNotes = "Tasting Notes"
    case history
}

struct FullInfoView: View {
    @Binding var item: CollectionItemDataModel

    @State var currentInfo: InfoType = .details

    var body: some View {
        VStack(spacing: 24) {
            HStack {
                VStack {
                    LatoText(
                        text: "Bottle \(item.currentCount)/\(item.maxCount)", size: 12,
                        color: .white.opacity(0.5),
                        alignment: .leading
                    )

                    GaramondText(
                        text: item.name,
                        size: 32,
                        weight: .medium
                    )
                }

                Spacer()
            }

            CustomSegmentControl(currentInfoType: $currentInfo)
                .frame(maxWidth: .infinity)
                .frame(height: 32)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(
            Color.blueBackground
        )
    }
}

#Preview {
    FullInfoView(item: .constant(CollectionItemDataModel(id: "1", imageName: "oneCaskImage", name: "Name", currentCount: 100, maxCount: 150)))
}
