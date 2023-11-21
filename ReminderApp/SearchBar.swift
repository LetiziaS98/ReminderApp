//
//  SearchBar.swift
//  ReminderApp
//
//  Created by Letizia Savastano Vanessa on 18/11/23.
//


import SwiftUI

struct SearchBar: View {
    @State var text: String = ""
    var body: some View {
        
        HStack {
            Image(systemName: "magnifyingglass").foregroundColor(.gray)
            TextField ("Search", text: $text).font(.callout)
        }.padding(4)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8.0)
        
        }
}

struct SearchBar_Previews: PreviewProvider {
   static var previews: some View {
        SearchBar()
            .previewLayout(.sizeThatFits)
    }
                
    }
