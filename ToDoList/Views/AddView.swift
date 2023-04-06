//
//  AddView.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
//            Text(" Hi there")
            VStack {
                TextField( "Type anything you want",  text:$textFieldText )
                    .padding(.horizontal)
                    .frame(height: 55)
//                  .background(Color(Literal))
                    .background(Color(UIColor(red: 1, green: 0.9843, blue: 0.9373, alpha: 1.0) /* #fffbef */))
                    .cornerRadius(10)

            }
            .padding(16)
//            colorliteral is deprecated
        }
        .navigationTitle("Add task 🖋️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(){
            AddView()
        }
        
    }
}
