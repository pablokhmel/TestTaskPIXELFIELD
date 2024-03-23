//
//  FullInfoScreen.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct FullInfoScreen: View {
    @State var item: CollectionItemDataModel

    init(item: CollectionItemDataModel) {
        self._item = State(initialValue: item)
    }

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack {
            BackgroundView()

            ScrollView(.vertical) {
                VStack {
                    FullInfoTopView(presentationMode: presentationMode)

                    Spacer()
                        .frame(height: 40)

                    HStack {
                        Image.FullInfoScreen.genuine
                            .padding(8)
                        LatoText(text: "Genuine Bottle (Unopened)", weight: .bold)
                        Spacer()
                        Image.FullInfoScreen.moreInfo
                            .padding(8)
                    }
                    .background(Color.background)

                    Image(item.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    FullInfoView(item: $item)

                    Spacer()
                        .frame(height: 100)
                }
            }
            .padding([.leading, .trailing, .top], 16)
        }
    }
}

#Preview {
    FullInfoScreen(item: CollectionItemDataModel(id: "1", imageName: "oneCaskImage", name: "Name", currentCount: 100, maxCount: 150))
}


