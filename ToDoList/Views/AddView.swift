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
                    .background(Color(UIColor(red: 0.9098, green: 0.9098, blue: 0.9098, alpha: 1.0)) /* #e8e8e8 */
)
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })

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
