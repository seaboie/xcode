//
//  FeatureCard.swift
//  Landmarks
//
//  Created by krit on 16/6/2566 BE.
//

import SwiftUI

struct FeatureCard: View {
    
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay(content: {
                TextOverlay(landmark: landmark)
            })
    }
}

struct FeatureCard_Previews: PreviewProvider {
    
    static var feature = ModelData().features[2]
    static var previews: some View {
        FeatureCard(landmark: feature)
    }
}
