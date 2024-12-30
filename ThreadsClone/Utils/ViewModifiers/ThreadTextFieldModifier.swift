//
//  ThreadTextFieldModifier.swift
//  ThreadsClone
//
//  Created by KEJES beis on 24.12.24.
//

import SwiftUI

struct ThreadTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
