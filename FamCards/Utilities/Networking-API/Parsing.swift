//
//  Parsing.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import Foundation
import Combine

func decode<T: Decodable>(_ data: Data) -> AnyPublisher<T, NetworkingError> {
  let decoder = JSONDecoder()
   // print(String(data: data, encoding: String.Encoding.utf8)!)
  return Just(data)
    .decode(type: T.self, decoder: decoder)
    .mapError { error in
      .parsing(description: error.localizedDescription)
    }
    .eraseToAnyPublisher()
}
