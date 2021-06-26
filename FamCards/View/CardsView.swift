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
        List(content: content)
            .onAppear(perform: viewModel.refresh)
            .listStyle(GroupedListStyle())
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
