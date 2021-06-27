//
//  HC3View.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct HC3View: View {
    
    @State var bigCard: Card
    
    var body: some View {
        
        GeometryReader() { geometry in
        VStack {
        if let formattedTitle = bigCard.formatted_title {
        FormattedText(formatTitle: formattedTitle)
        }
            Spacer()
            if let description = bigCard.description {
                Text(description)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
            if let cta = bigCard.cta {
            HStack {
                ForEach(0..<cta.count, id: \.self){
                    var action = cta[$0]
                    ActionButtonView(text: action.text, bgColor: Color(hexCode:  action.bg_color ?? "#000000"), textColor: (action.text_color ?? "#FFFFFF"), url: action.url ?? "")
                }
            }
            .frame(maxWidth: geometry.size.width)
            }
        }
        .padding()
        .background(RemoteImage(url: bigCard.bg_image?.image_url ?? ""))
        .cardStyle()
   //     .frame(height: geometry.size.height*0.3)
        }
    }
}
