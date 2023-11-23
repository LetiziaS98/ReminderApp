//
//  ContentView.swift
//  ReminderApp
//
//  Created by Letizia Savastano Vanessa on 18/11/23.
//


import SwiftUI

struct ContentView: View {
    
    
    @State var searchText: String = ""
    var body: some View {
        
        NavigationView {
            
            
            
            VStack {
                
                //                Image (systemName:
                //                    "ellipsis.circle")
                //            .foregroundColor(.blue)
                //
                // identifier
                Spacer(minLength: 20)
                SearchBar(text: searchText).background(Color.white).cornerRadius(8.1)
                Spacer(minLength: 15)
                VStack(alignment: .center, spacing: 15) {
                    HStack(spacing: 15) {
                        MenuView(image: "calendar.circle.fill", title: "Today", count: "0").background(Color.white).cornerRadius(8.1).accessibilityIdentifier("")
                        MenuView(image: "calendar.circle.fill", title: "Scheduled", count: "0").background(Color.white).cornerRadius(8.1).accessibilityIdentifier("")
                    }
                    HStack(spacing: 15) {
                        MenuView(image: "tray.circle.fill", title: "All", count: "0").background(Color.white).cornerRadius(8.1).accessibilityIdentifier("")
                        MenuView(image: "flag.circle.fill", title: "Flagged", count: "0").background(Color.white).cornerRadius(8.1).accessibilityIdentifier("")
                    }
                    HStack (spacing: 180) {
                        MenuView(image: "checkmark.circle.fill", title: "Completed", count: "0").background(Color.white).cornerRadius(8.1).accessibilityIdentifier("")
                        Spacer()
                        
                    }
                    
                }
                
                HStack {
                    // identifier
                    Text("My Lists")
                        .fontDesign(.rounded)
                        .font(.title2)
                        .bold().accessibilityIdentifier("")
                    Spacer()
                }.padding(.all, 8.0)
                
                VStack(spacing: 0) {
                    // identifier
                    ListMenu(icon: "list.bullet.circle.fill", title: "Reminders", count: "0").background(Color.white).cornerRadius(8.0).accessibilityIdentifier("")
                    
                    
                }.cornerRadius(8.0)
                
                Spacer(minLength: 220)
                
                HStack(){
                    // identifier
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image (systemName:
                                "plus.circle.fill")
                        .imageScale(.large)
                        .foregroundColor(.blue)
                        Text("New Reminder")
                            .accessibilityIdentifier("")
                        Spacer()
                    })
                    Button(action: {
                        
                    }, label: {
                        // identifier
                        Text("Add List").accessibilityIdentifier("")
                            
                        
                    })
                }.padding()
                // .background(Color.gray.opacity(0.1))
                
            }.padding()
                .toolbar{
                    // identifier
                    ToolbarItem(){
                        Button(action: {}, label: {
                            Image(systemName: "ellipsis.circle")
                                .accessibilityIdentifier("")
                        })
                    }
                }
        }
        .background(Color.gray.opacity(0.2))
        }
    
}
    
    struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
