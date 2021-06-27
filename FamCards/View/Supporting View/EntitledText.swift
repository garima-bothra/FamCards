//
//  EntitledText.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

//MARK: EntitledText - Bold (for titles)

struct EntitledText: View {
    
    @Environment(\.openURL) var openURL
    
    @State var entity: Entity
    
    var body: some View {
        Text(entity.text)
            .font(.system(size: 25))
            .bold()
            .foregroundColor(Color(hexCode: (entity.color ?? "#000000")))
            .onTapGesture {
                guard let linkURL = URL(string: entity.url ?? "") else {
                    return
                }
                openURL(linkURL)
            }
    }
}

//MARK: EntitledDescription - Regular (for subtitles)

struct EntitledDescription: View {
    
    @Environment(\.openURL) var openURL
    
    @State var entity: Entity
    
    var body: some View {
        Text(entity.text)
            .foregroundColor(Color(hexCode: (entity.color ?? "#000000")))
            .onTapGesture {
                guard let linkURL = URL(string: entity.url ?? "") else {
                    return
                }
                openURL(linkURL)
            }
    }
}
