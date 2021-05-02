//
//  PlaceholderStyleModifier.swift
//  Let's read
//
//  Created by SENGHORT on 5/2/21.
//

import SwiftUI

struct PlaceholderStyleModifier: ViewModifier {
    var showPlaceHolder: Bool
    var placeholder: String

    public func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceHolder {
                Text(placeholder)
                    .font(.system(size: 15))
                    .padding(.horizontal, 5)
            }
            content
            .foregroundColor(Color.white)
            .padding(5.0)
        }
    }
}
