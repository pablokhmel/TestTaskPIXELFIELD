//
//  CollectionViewModel.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import Foundation

class CollectionViewModel: ObservableObject {
    @Published var items: [CollectionItemDataModel] = []

    func fetchItems() async {
        if let url = Bundle.main.url(forAuxiliaryExecutable: "Items.json") {
            do {
                try await Task.sleep(nanoseconds: 1_000_000_000)
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                items = try decoder.decode([CollectionItemDataModel].self, from: data)
            } catch {
                print("error:\(error)")
            }
        }
    }
}

struct CollectionItemDataModel: Codable, Identifiable {
    let id: String
    let imageName: String
    let name: String
    let currentCount: Int
    let maxCount: Int
}
