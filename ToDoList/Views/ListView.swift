//
//  ListView.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

import SwiftUI


struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    //    line below is view
    var body: some View {
        ZStack{
            if listViewModel.items.isEmpty{
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else{
                List{
                    ForEach( listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
        //                    ListRowView(title: item)
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                    
        //            list start little lower on screen because we have room for navigation bar in navigation view
                }
                .listStyle(PlainListStyle())

            }
        }
        .navigationTitle("ToDo List 🗒️")
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
//         important line
        .environmentObject(ListViewModel())
        
    }
}
// extract listview hstack
// create this for use multiple time after

