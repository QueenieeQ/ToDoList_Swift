//
//  AddView.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var showAlert: Bool = false
    @State var alertTitle: String =  ""
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
                
                Button(action: saveButtonPress
                       , label: {
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
        .alert(
            isPresented: $showAlert,
            content: getAlert
        )
    }
    func saveButtonPress(){
        if textIsGood() == true {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()

        }
    }
    func textIsGood() -> Bool{
        if textFieldText.count < 5 {
            alertTitle = "Your new to do things need to be 5 character long  🤨"
            showAlert.toggle()
            return false
        }
            return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }

}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(){
            AddView()
        }
        .environmentObject(ListViewModel())
        
    }
}
