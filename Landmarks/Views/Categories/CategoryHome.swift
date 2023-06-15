//
//  CategoryHome.swift
//  Landmarks
//
//  Created by krit on 15/6/2566 BE.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData;
    @State private var showingProfile = false;
    
    var body: some View {
        NavigationStack {
            
            List(content: {
                
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            })
            .listStyle(.plain)
            .navigationTitle("Featured")
            
            .toolbar {
                Button {
                    withAnimation {
                        showingProfile.toggle();
                    }
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }

            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
