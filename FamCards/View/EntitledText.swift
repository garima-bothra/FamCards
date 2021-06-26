//
//  EntitledText.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct EntitledText: View {
    
    @Environment(\.openURL) var openURL
    
    @State var text: String
    @State var color: Color
    @State var url: String
    
    var body: some View {
        Text(text)
            .foregroundColor(color)
            .onTapGesture {
                guard let linkURL = URL(string: url) else {
                    return
                }
                openURL(linkURL)
            }
    }
}
