//
//  CategoryItem.swift
//  Landmarks
//
//  Created by krit on 15/6/2566 BE.
//

import SwiftUI

struct CategoryItem: View {
    
    var landMark: Landmark
    
    var body: some View {
        VStack(alignment: .leading){
            landMark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155, alignment: .center)
            .cornerRadius(5)
            
            Text(landMark.name)
                .foregroundColor(.primary)
                .font(.system(size: sz.caption))
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landMark: ModelData().landmarks[0])
    }
}
