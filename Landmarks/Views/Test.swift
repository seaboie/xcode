//
//  Test.swift
//  Landmarks
//
//  Created by krit on 13/6/2566 BE.
//

import SwiftUI

struct Test: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                let w = geo.size.width * 0.5;
//                let w = geo.size.height * 0.5;
                (
                    Rectangle()
                        .foregroundColor(.red)
                        .padding(.top, w)
                        .cornerRadius(w)
                        .padding(.top, -w)
                )
            }
            Rectangle()
                .foregroundColor(.white)
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
