//
//  CardsViewModel.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation
import SwiftUI
import Combine

class GroupsViewModel: ObservableObject {
    @Published var dataSource: CardGroupsViewModel?
    
    private let cardsFetcher: CardFetchable
    private var disposables = Set<AnyCancellable>()
    
    init(cardsFetcher: CardFetchable){
        self.cardsFetcher = cardsFetcher
    }
    
    func refresh() {
        cardsFetcher.fetchCard().map(CardGroupsViewModel.init)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] value in
                guard let self = self else { return }
                switch value {
                case .failure:
                    print("Fetch failed")
                    self.dataSource = nil
                case .finished:
                    print("Data fetched")
                    break
                }
            }, receiveValue: { [weak self] card in
                guard let self = self else { return }
                self.dataSource = card
            })
            .store(in: &disposables)
    }
}


struct CardGroupViewModel: Identifiable {
    var id = UUID()
    
    private let item : CardGroup
    
    var designType: DesignType {
        return item.design_type
    }
    
    var cards: [Card] {
        return item.cards
    }
    
    var isScrollable: Bool {
        return item.is_scrollable
    }
    
    init(item: CardGroup) {
        self.item = item
    }
    
}

struct CardGroupsViewModel {
    private let item: [CardGroup]
    
    init(item:CardGroups) {
        self.item = item
    }
    
    var cardGroups: [CardGroupViewModel] {
        return item.map{CardGroupViewModel(item: $0)}
    }
    
}
