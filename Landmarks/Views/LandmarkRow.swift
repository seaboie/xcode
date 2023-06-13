//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by krit on 13/6/2566 BE.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkRow(landmark: landmarks[1])
        
    }
}
