//
//  TestAgain.swift
//  Landmarks
//
//  Created by krit on 17/6/2566 BE.
//

import SwiftUI
struct AdaptiveStack<Content: View>: View {
  @Environment(\.sizeCategory) var sizeCategory
  @Environment(\.horizontalSizeClass) var horizontalSizeClass

  private var compactDesign: Bool {
    sizeCategory.isAccessibilityCategory ||
    horizontalSizeClass == UserInterfaceSizeClass.compact
  }

  private var horizontalAlignment: HorizontalAlignment
  private var verticalAlignment: VerticalAlignment
  private var spacing: CGFloat?
  private var content: Content
  
  init(horizontalAlignment: HorizontalAlignment = .center,
    verticalAlignment: VerticalAlignment = .center,
    spacing: CGFloat? = nil,
    @ViewBuilder content: () -> Content) {
      self.horizontalAlignment = horizontalAlignment
      self.verticalAlignment = verticalAlignment
      self.spacing = spacing
      self.content = content()
  }

  var body: some View {
    if compactDesign {
      VStack(alignment: horizontalAlignment, spacing: spacing) { content }
    } else {
      HStack(alignment: verticalAlignment, spacing: spacing) { content }
    }
  }
}

struct AdaptiveStackLibrary: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(AdaptiveStack {
            Text("Hello")
        }, category: .layout, matchingSignature: "asv")}
}
