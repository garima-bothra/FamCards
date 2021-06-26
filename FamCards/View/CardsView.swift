//
//  Cards.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import SwiftUI

struct CardsView: View {
    @ObservedObject var viewModel: CardGroupViewModel
    
    init(viewModel: CardGroupViewModel){
        self.viewModel = viewModel
    }
    
    var body: some View {
        GeometryReader { geometry in
        VStack() {
//        List(content: content)
//            .onAppear(perform: viewModel.refresh)
//            .listStyle(GroupedListStyle())
            
            HC1View(titleText: "Small display card", subheadingText: "Arya Stark")
                .frame(height: geometry.size.height * 0.1)
           // Spacer(minLength: 50)
        }
        .padding()
    }
    }
}

private extension CardsView {
  func content() -> some View {
    if let viewModel = viewModel.dataSource {
      return AnyView(details(for: viewModel))
    } else {
      return AnyView(loading)
    }
  }

  func details(for viewModel: CardViewModel) -> some View {
    CardRow(viewModel: viewModel)
  }

  var loading: some View {
    Text("Loading \(viewModel.dataSource.debugDescription)")
      .foregroundColor(.gray)
  }
}
