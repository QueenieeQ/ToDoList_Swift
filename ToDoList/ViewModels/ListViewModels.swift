//
//  ListViewModels.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

import Foundation
// environment object 
class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
//     published is property wrapper
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first line", isCompleted: false),
            ItemModel(title: "This is the second line", isCompleted: true),
            ItemModel(title: "Third", isCompleted: false)
        ]
//        append newItems to ItemModel array
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }

}
