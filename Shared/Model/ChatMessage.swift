//
//  ChatMessage.swift
//  AGChat
//
//  Created by PDWS on 9/16/22.
//

import Foundation
import FirebaseFirestoreSwift

struct ChatMessage: Codable, Identifiable {
    @DocumentID var id: String?
    let fromId, toId, text: String
    let timestamp: Date
}
