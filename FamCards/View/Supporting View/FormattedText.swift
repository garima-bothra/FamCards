//
//  FormattedText.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

//MARK: FormattedText - Bold (for titles)

struct FormattedText: View {
    
    @State var formatTitle: FormattedTitle
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
        ForEach((0..<formatTitle.components.count - 1), id: \.self){
            EntitledText(entity: formatTitle.entities[$0])
        }
    }
    }
}

//MARK: FormattedDescription - Regular (for subtitles)

struct FormattedDescription: View {
    
    @State var formatDescription: FormattedTitle
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
        ForEach((0..<formatDescription.components.count - 1), id: \.self){
            EntitledDescription(entity: formatDescription.entities[$0])
        }
    }
    }
}
