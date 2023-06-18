//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by krit on 12/6/2566 BE.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject var order = Order();
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
