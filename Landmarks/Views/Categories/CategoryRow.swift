//
//  CategoryRow.swift
//  Landmarks
//
//  Created by krit on 15/6/2566 BE.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.system(size: sz.headline))
                .padding(EdgeInsets(top: 5, leading: 15, bottom: 0, trailing: 15))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landMark: landmark)
                        }

                    }
                }
            }
            .frame(width: .infinity, height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(50))
            )
    }
}
