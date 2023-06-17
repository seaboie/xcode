//
//  ItemRow.swift
//  Landmarks
//
//  Created by krit on 17/6/2566 BE.
//

import SwiftUI

struct ItemRow: View {
    
    let item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .foregroundColor(.white)
                    .clipShape(Circle())
                
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    let item: MenuItem
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
