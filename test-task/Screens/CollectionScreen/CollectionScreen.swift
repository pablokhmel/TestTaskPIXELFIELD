//
//  CollectionScreen.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct CollectionScreen: View {
    @ObservedObject var viewModel = CollectionViewModel()
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                HStack {
                    GaramondText(text: "My collection", size: 32, weight: .medium)
                    Spacer()
                    Button {

                    } label: {
                        Image.CollectionScreen.notifications
                    }
                }
                .frame(maxWidth: .infinity)

                ScrollView(.vertical) {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                        ForEach(viewModel.items) { item in
                            NavigationLink {
                                FullInfoScreen(item: item)
                                    .navigationBarBackButtonHidden()
                            } label: {
                                CollectionItem(item: item)
                                    .frame(height: 313)
                                    .background(Color.blueBackground)
                            }
                        }
                    }
                }
                .task {
                    await viewModel.fetchItems()
                }
                .refreshable {
                    await viewModel.fetchItems()
                }
            }
            .padding([.leading, .trailing, .top], 16)
            .background(Color.darkBackground)
        }
    }
}

struct CollectionItem: View {
    let item: CollectionItemDataModel

    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity)
            GaramondText(text: item.name, size: 22, weight: .medium)
            LatoText(text: "(\(item.currentCount)/\(item.maxCount))", size: 12)
        }
        .padding(16)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    CollectionScreen()
}
