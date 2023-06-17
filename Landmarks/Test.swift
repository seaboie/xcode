//
//  Test.swift
//  Landmarks
//
//  Created by krit on 17/6/2566 BE.
//

import SwiftUI

struct Test: View {
    var body: some View {
        VStack {
            AdaptiveStack {
                /*@START_MENU_TOKEN@*/Text("Hello")/*@END_MENU_TOKEN@*/
            }
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Text("Hey")
            Group {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
