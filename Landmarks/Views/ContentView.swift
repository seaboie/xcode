//
//  ContentView.swift
//  Landmarks
//
//  Created by krit on 12/6/2566 BE.
//

import SwiftUI

struct ContentView: View {
    
    enum Tab {
        case featured
        case list
    }
    
    @State private var selection: Tab = .featured;
    
    var body: some View {
        
        TabView {
            
            CategoryHome()
                .tabItem({
                    Label("Featured", systemImage: "star")
                })
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem({
                    Label("List", systemImage: "list.bullet")
                })
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
