//
//  ListMenu.swift
//  ReminderApp
//
//  Created by Letizia Savastano Vanessa on 18/11/23.
//


import SwiftUI

struct ListMenu: View {
    var icon: String
    var title: String
    var count: String
    
    var body: some View {
        HStack {
            Image(systemName: icon).foregroundColor(.orange)
            Text(title)
            Spacer()
            Text(count).foregroundColor(.gray)
            Image(systemName: "chevron.right").foregroundColor(.gray)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        
    }
}

struct ListMenu_Previews: PreviewProvider {
    static var previews: some View {
        ListMenu(icon: "list.bullet.circle.fill", title: "Reminders", count: "0")
            .previewLayout(.sizeThatFits)
    }
}

