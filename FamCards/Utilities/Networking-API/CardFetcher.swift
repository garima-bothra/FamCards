//
//  CardFetcher.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation
import Combine

//MARK: DataSource API
let apiURL: URL? = URL(string: "http://www.mocky.io/v2/5e2703792f00000d00a4f91d")

protocol CardFetchable {
    func fetchCard() -> AnyPublisher<CardGroups, NetworkingError>
}

class CardFetcher {
    private let session: URLSession
    
    init(session: URLSession = .shared) {
      self.session = session
    }
}

//MARK: - API Networking

extension CardFetcher: CardFetchable {
    func fetchCard() -> AnyPublisher<CardGroups, NetworkingError> {
        return card(with: apiURL)
    }
   
    private func card<T>(with
    cardURL: URL?) -> AnyPublisher<T, NetworkingError> where T: Decodable {
        guard let url = cardURL else {
            let error = NetworkingError.networking(description: "Coudn't create URL")
            return Fail.init(error: error).eraseToAnyPublisher()
        }
        
        return session.dataTaskPublisher(for: URLRequest(url: url))
            .mapError { error in
            .networking(description: error.localizedDescription)
            }
            .flatMap(maxPublishers: .max(1)) { pair in
              decode(pair.data)
            }
            .eraseToAnyPublisher()
    }
}
