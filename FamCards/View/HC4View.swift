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
            RemoteImage(url: centreCard.bg_image?.image_url ?? "")
            Spacer()
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
                    ActionButtonView(text: action.text, bgColor: Color(hexCode:  action.bg_color ?? "#FFFFFF"), textColor: Color(action.text_color ?? "#000000"), url: action.url ?? "")
                }
            }
            .frame(width: geometry.size.width)
            }
        }
        .padding()
        .background(Color(hexCode: centreCard.bg_color ?? "#FFFFFF"))
        }
    }
}

//struct HC4View_Previews: PreviewProvider {
//    static var previews: some View {
//        HC4View()
//    }
//}
