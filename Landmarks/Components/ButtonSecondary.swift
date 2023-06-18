//
//  ButtonSecondary.swift
//  Landmarks
//
//  Created by krit on 18/6/2566 BE.
//

import SwiftUI


struct ButtonSecondary: View {
    
    var title: String
    let action: () -> Void
    
    var body: some View {
        VStack {
            Button(title) {
                action()
            }
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding(sz.ps)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: sz.rr))
            
            RoundedRectangle(cornerRadius: sz.rr)
                .frame(width: .infinity, height: 100)
                .foregroundColor(.red)
                .padding(sz.pm)
                
        }
    }
}

struct ButtonSecondary_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSecondary(title: "Click me", action: {})
    }
}
