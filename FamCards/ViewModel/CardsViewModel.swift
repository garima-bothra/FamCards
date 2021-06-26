//
//  CardsViewModel.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation
import Combine

class CardGroupViewModel: ObservableObject {
    @Published var dataSource: CardViewModel?
    
    private let cardsFetcher: CardFetchable
    private var disposables = Set<AnyCancellable>()
    
    init(cardsFetcher: CardFetchable){
        self.cardsFetcher = cardsFetcher
    }
    
    func refresh() {
        cardsFetcher.fetchCard().map(CardViewModel.init)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] value in
              guard let self = self else { return }
              switch value {
              case .failure:
                self.dataSource = nil
              case .finished:
                break
              }
            }, receiveValue: { [weak self] card in
                guard let self = self else { return }
                self.dataSource = card
                print(card)
            })
            .store(in: &disposables)
    }
}

class CardViewModel {
    private let item : CardGroups
    
    var name: String {
        item.forEach({ print("\($0.name)\n") })
        return item[0].name
    }
    init(item: CardGroups) {
        self.item = item
    }
}
