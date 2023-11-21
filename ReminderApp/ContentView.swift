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
                    
                    Spacer(minLength: 20)
                    SearchBar(text: searchText).background(Color.white).cornerRadius(8.1)
                    Spacer(minLength: 15)
                    VStack(alignment: .center, spacing: 15) {
                        HStack(spacing: 15) {
                            MenuView(image: "calendar.circle.fill", title: "Today", count: "0").background(Color.white).cornerRadius(8.1).accessibilityLabel("Today")
                            MenuView(image: "calendar.circle.fill", title: "Scheduled", count: "0").background(Color.white).cornerRadius(8.1).accessibilityLabel("Scheduled")
                        }
                        HStack(spacing: 15) {
                            MenuView(image: "tray.circle.fill", title: "All", count: "0").background(Color.white).cornerRadius(8.1).accessibilityLabel("All")
                            MenuView(image: "flag.circle.fill", title: "Flagged", count: "0").background(Color.white).cornerRadius(8.1).accessibilityLabel("Flagged")
                        }
                        HStack (spacing: 180) {
                            MenuView(image: "checkmark.circle.fill", title: "Completed", count: "0").background(Color.white).cornerRadius(8.1).accessibilityLabel("Completed")
                            Spacer()
                            
                        }
                        
                    }
                    
                    HStack {
                        Text("My Lists")
                            .fontDesign(.rounded)
                            .font(.title2)
                            .bold().accessibilityLabel("My Lists")
                        Spacer()
                    }.padding(.all, 8.0)
                    
                    VStack(spacing: 0) {
                        ListMenu(icon: "list.bullet.circle.fill", title: "Reminders", count: "0").background(Color.white).cornerRadius(20).accessibilityLabel("Reminders")
                        
                        
                    }.cornerRadius(8.0)
                    
                    Spacer(minLength: 220)
                    
                    HStack(){
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image (systemName:
                                    "plus.circle.fill")
                            .imageScale(.large)
                            .foregroundColor(.blue)
                            Text("New Reminder")
                            Spacer()
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("Add List")
                            
                        })
                    }.padding()
                    // .background(Color.gray.opacity(0.1))
                    
                }.padding()
                    .toolbar{
                        ToolbarItem(){
                            Button(action: {}, label: {
                               Image(systemName: "ellipsis.circle")
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
    
