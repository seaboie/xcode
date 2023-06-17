//
//  ItemRow.swift
//  Landmarks
//
//  Created by krit on 17/6/2566 BE.
//

import SwiftUI

struct ItemRow: View {
    
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
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
