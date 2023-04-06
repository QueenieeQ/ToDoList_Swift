//
//  ListView.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
//    "This is the first title",
//    "This is the second title",
//    "And this tis the third "
        ItemModel(title: "This is the first line", isCompleted: false),
        ItemModel(title: "This is the second line", isCompleted: false),
        ItemModel(title: "Third", isCompleted: false)
        
    ]
    var body: some View {
        
        List{
//            Text("Hi this is list view")
//            ListRowView(title: "This is the first title!")
            ForEach( items) { item in
                Text("Hi")
//                    ListRowView(title: item)
                }
//            list start little lower on screen because we have room for navigation bar in navigation view
        }
        .listStyle(PlainListStyle())
//         change style of list
//        .listStyle(SidebarListStyle())
        .navigationTitle("ToDo List 😘")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
//                link button to another screen
//            very like intent android
            NavigationLink("Add",
                           destination: AddView())
                    
        )
//         this is will be not avaiable in next version of ios
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}
// extract listview hstack
// create this for use multiple time after

