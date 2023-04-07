//
//  ItemModel.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//
// inmutable struc
import Foundation
struct ItemModel: Identifiable, Codable {
    let id: String
//     create unique id
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    func updateCompeletion() -> ItemModel{
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}

