//
//  ItemDetial.swift
//  Landmarks
//
//  Created by krit on 17/6/2566 BE.
//

import SwiftUI

struct ItemDetial: View {
    
    let item: MenuItem
    
    var body: some View {
        VStack {
            
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Photo: \(item.photoCredit)")
                    .foregroundColor(.white)
                    .font(.caption)
                    .padding(18)
                    .background(.black.opacity(0.6))
                    .clipShape(Ellipse())
                    .padding()
            }
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ItemDetial_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetial(item: MenuItem.example)
        }
    }
}
