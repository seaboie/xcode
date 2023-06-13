//
//  LandmarkList.swift
//  Landmarks
//
//  Created by krit on 13/6/2566 BE.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationStack {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }

            }
            .navigationTitle("Landmarks")
            
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
