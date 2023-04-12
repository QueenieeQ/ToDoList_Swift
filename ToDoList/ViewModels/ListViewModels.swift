//
//  ListViewModels.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

import Foundation
// environment object 
class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []{
        didSet{
//            everytime items array didset get called
            saveItems()
        }
    }
    let itemsKey: String = "items_key"
//     published is property wrapper
    init() {
        getItems()
    }
//    commit something
    
    func getItems() {
/*         let newItems = [
           ItemModel(title: "This is the first line",
                      isCompleted: false),
            ItemModel(title: "This is the second line",
                      isCompleted: true),
            ItemModel(title: "Third",
                      isCompleted: false)
        ]
//        append newItems to ItemModel array
        items.append(contentsOf: newItems)
 */
//        use guard to make sure data is saved
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey)
        else {return}
        guard
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return}
        self.items = savedItems
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(
            atOffsets: indexSet
        )
//        saveItems()
    }
    func moveItem(
        from: IndexSet,
        to: Int
    ){
        items.move(
            fromOffsets: from,
            toOffset: to
        )
    }
    func addItem(title: String){
        let newItem = ItemModel(
            title: title,
            isCompleted: false
        )
        items.append(newItem)
    }
//    handle every update in item model 
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id }) {
                   items[index] = item.updateCompeletion()
               }
    }
//    use userDefault to save a small piece of data
//    core data is use for bigger database like a thoundsand of line
    func saveItems(){
//        try to encode data from array to json to put in user default
        if let encodeData = try? JSONEncoder().encode(items){
//
            UserDefaults.standard.set(encodeData, forKey: itemsKey)
            
        }
        
    }
    

}
