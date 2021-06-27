//
//  HC1View.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import SwiftUI

struct HC1View: View {
    
    @State var smallCard: Card
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                if URL(string: smallCard.icon?.image_url ?? "") != nil {
                    RemoteImage(url: smallCard.icon?.image_url ?? "")
                        .aspectRatio(contentMode: .fit)
                }
                
                VStack(alignment: .leading) {
                    if let title = smallCard.title {
                        Text(title)
                            .bold()
                            .lineLimit(1)
                    }
                    if let subheadingText = smallCard.description {
                        Text(subheadingText)
                            .lineLimit(1)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
            }
            .padding()
            .background(Color(hexCode: smallCard.bg_color ?? "#FFFFFF"))
            .cardStyle()
        }
    }
}
