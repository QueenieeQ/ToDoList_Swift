//
//  ListRowView.swift
//  ToDoList
//
//  Created by Quý Ninh on 06/04/2023.
//

import SwiftUI

struct ListRowView: View {
//     create text dynamic
    
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
            
        }
    }
}
// no idea why this code base not running in previous project
// f... broken swiftui preview
struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(
            title: " this is the first title"
        )
    }
}
