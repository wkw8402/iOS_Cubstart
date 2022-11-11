//
//  CardViewModel.swift
//  quizlet-ish
//
//  Created by Kun on 11/10/22.
//

import Foundation
import Combine

class CardViewModel: ObservableObject, Identifiable {
  
  private let cardRepository = CardRepository()
  @Published var card: Card
  
  private var cancellables: Set<AnyCancellable> = []
  
  var id = ""

  init(card: Card) {
    self.card = card
    
    $card
      .compactMap { $0.id }
      .assign(to: \.id, on: self)
      .store(in: &cancellables)
  }

  func update(card: Card) {
    cardRepository.update(card)
  }

  func remove() {
    cardRepository.remove(card)
  }
}
