//
//  ContentView.swift
//  Landmarks
//
//  Created by krit on 12/6/2566 BE.
//

import SwiftUI

struct ContentView: View {
    
    let menus = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {

        NavigationStack {
            List {
                ForEach(menus) { menu in
                    Section(menu.name) {
                        ForEach(menu.items) { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
