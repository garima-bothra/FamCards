//
//  HC5View.swift
//  FamCards
//
//  Created by Garima Bothra on 27/06/21.
//

import SwiftUI

struct HC5View: View {
    
    
    @State var imageCard: Card
    
    var body: some View {
        GeometryReader { geometry in
            if URL(string: imageCard.bg_image?.image_url ?? "") != nil {
                RemoteImage(url: imageCard.bg_image?.image_url ?? "")
                    .aspectRatio(contentMode: .fill)
                    
               //     .background(Color(hexCode: imageCard.bg_color ?? "#FFFFFF"))
                    .frame(height: geometry.size.height )
                    .clipped()
                    .cardStyle()
                    
            }
        }
    }
}
