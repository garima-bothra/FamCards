//
//  FormattedText.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct FormattedText: View {
    
    @State var formatTitle: FormattedTitle
    
    var body: some View {
        VStack {
        ForEach((0..<formatTitle.components.count - 1), id: \.self){
            Text(formatTitle.components[$0])
            EntitledText(entity: formatTitle.entities[$0])
        }
            Text(formatTitle.components[formatTitle.components.count - 1])
    }
    }
}
