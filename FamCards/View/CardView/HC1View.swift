//
//  HC1View.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import SwiftUI

struct HC1View: View {
    
    @State var smallCard: Card
//    @State var titleText: String
//    @State var subheadingText: String
//    @State var imageURL: String
    
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
                }
                if let subheadingText = smallCard.description {
            Text(subheadingText)
                .font(.subheadline)
                .foregroundColor(.gray)
            }
            }
            Spacer()
        }
        .padding()
        .background(Color(hexCode: smallCard.bg_color ?? "#FFFFFF"))
        .cardStyle()
      //  .frame( height: geometry.size.height*0.1)
        }
    }
}

//struct HC1View_Previews: PreviewProvider {
//    static var previews: some View {
//        HC1View(titleText: "Small display card", subheadingText: "Arya Stark")
//    }
//}
