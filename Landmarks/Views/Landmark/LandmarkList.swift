//
//  LandmarkList.swift
//  Landmarks
//
//  Created by krit on 13/6/2566 BE.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData;
    @State private var showFavoritesOnly = false;
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                ToggleFavorite(showFavoriteOnly: $showFavoritesOnly)
                
                List {
                    
                    
                    ForEach(filteredLandmarks) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }

                    }
                }
                .listStyle(.plain)
                
                .navigationTitle("Landmarks")
            }
            
            
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
