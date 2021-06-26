//
//  CardModifier.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import Foundation
import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
    content
        .cornerRadius(20)
    }
}

extension View {
    func cardStyle() -> some View {
        self.modifier(CardModifier())
    }
}
