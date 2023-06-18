//
//  ButtonThird.swift
//  Landmarks
//
//  Created by krit on 18/6/2566 BE.
//

import SwiftUI

struct ButtonThird: View {
    
    var title: String
    let action: () -> Void
    
    var body: some View {
        GeometryReader { geo in
            
            
                Button(title) {
                    action()
                }
                .font(.title)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width: .infinity, height: geo.size.width * 0.15, alignment: .center)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: geo.size.width * 0.02))
            }
        
            
            
        
    }
}

struct ButtonThird_Previews: PreviewProvider {
    static var previews: some View {
        ButtonThird(title: "Click me", action: {})
    }
}
