//
//  HC4View.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct HC4View: View {
    
    @State var centreCard: Card
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                if let url = centreCard.icon?.image_url {
                    RemoteImage(url: url)
                        .aspectRatio(contentMode: .fit)
                        .frame(height: geometry.size.height * 0.25)
                }
                Text(centreCard.name)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                if let title = centreCard.title {
                    Text(title)
                        .font(.headline)
                        .bold()
                }
                if let cta = centreCard.cta {
                    HStack {
                        ForEach(0..<cta.count, id: \.self){
                            var action = cta[$0]
                            ActionButtonView(text: action.text, bgColor: Color(hexCode:  action.bg_color ?? "#FFFFFF"), textColor: (action.text_color ?? "#FFFFFF"), url: action.url ?? "")
                        }
                    }
                    .frame(width: geometry.size.width * 0.91)
                }
            }
            .padding()
            .background(LinearGradient(gradient: getGradient(hexStrings: centreCard.bg_gradient?.colors ?? []), startPoint: .leading, endPoint: .trailing))
            .background(Color(hexCode: centreCard.bg_color ?? "#FFFFFF"))
            .cardStyle()
        }
    }
}

