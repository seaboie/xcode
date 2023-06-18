//
//  ButtonPrimary.swift
//  Landmarks
//
//  Created by krit on 18/6/2566 BE.
//

import SwiftUI

struct ButtonPrimary: View {
    
    var title: String
    let action: () -> Void
    
    var body: some View {
        Button(title) {
            action()
        }
        .foregroundColor(.white)
        
        .fontWeight(.bold)
        .padding(12)
        .background(.blue)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct ButtonPrimary_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPrimary(title: "Click me", action: {})
    }
}
