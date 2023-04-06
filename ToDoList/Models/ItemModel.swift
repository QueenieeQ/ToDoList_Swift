//
//  ItemModel.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

import Foundation
struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
//     create unique id
    let title: String
    let isCompleted: Bool
    
}

