//
//  ToggleFavorite.swift
//  Landmarks
//
//  Created by krit on 13/6/2566 BE.
//

import SwiftUI

struct ToggleFavorite: View {
    
    @Binding var showFavoriteOnly: Bool
    
    var body: some View {
        VStack {
            Toggle(isOn: $showFavoriteOnly) {
                Text("Favorite only")
            }
        }
        
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
    }
}

struct ToggleFavorite_Previews: PreviewProvider {
    static var previews: some View {
        ToggleFavorite(showFavoriteOnly: .constant(false))
    }
}
