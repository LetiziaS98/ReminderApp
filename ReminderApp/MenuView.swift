//
//  MenuView.swift
//  ReminderApp
//
//  Created by Letizia Savastano Vanessa on 18/11/23.
//


import SwiftUI

struct MenuView: View {
    var image:  String
    var title: String
    var count: String
    
    var body: some View {
        VStack {
            HStack { 
                Image(systemName: image)
                Spacer()
                Text(count).bold()
            }
            .font(.largeTitle)
            
            HStack {
                Text(title).font(.headline).foregroundColor(.gray)
                Spacer()
            }
            .font(.title)
        }
        
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8.0)
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(image: "calendar.circle.fill", title: "Today", count: "0")
            .previewLayout(.sizeThatFits)
    }
}
