//
//  Animate.swift
//  Landmarks
//
//  Created by krit on 15/6/2566 BE.
//

import SwiftUI

extension Animation {
    static func animateSpringSpeedDelay() -> Animation {
//        Animation.default
        Animation.spring(dampingFraction: 0.5)
            .speed(2)
            .delay(0.03)
    }
}

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .move(edge: .trailing).combined(with: .opacity),
            removal: .scale.combined(with: .opacity)
        )
    }
}
