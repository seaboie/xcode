//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by krit on 13/6/2566 BE.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        
                    Spacer()
                    
                    Text(landmark.state)
                        
                }
                .font(.subheadline)
                .foregroundColor(Color.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct LandmarkDetail_Previews: PreviewProvider {
//    var landmark: Landmark
//    static var previews: some View {
//        LandmarkDetail(landmark: landmark)
//    }
//}
