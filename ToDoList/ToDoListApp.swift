//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

/*
 
 some brief about MVVC architecture
 
 Model - Data point
 View - UI
 ViewMode- view model can manage data in model for view
 
 */
import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView(){
                ListView()
                //            entire app is always in a navigation view
            }
            .navigationViewStyle(StackNavigationViewStyle())
//            do this to make every view can have access to listViewModel
            .environmentObject(listViewModel)
        }
    }
}
