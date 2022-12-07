//
//  Card.swift
//  quizlet-ish
//
//  Created by Kun Woo on 11/24/22.
//

import Foundation
import FirebaseFirestoreSwift

struct Card: Identifiable, Codable {
  @DocumentID var id: String?
  var question: String
  var answer: String
  var successful: Bool = true
  var userId: String?
}
