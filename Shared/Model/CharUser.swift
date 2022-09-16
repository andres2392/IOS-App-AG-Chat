//
//  CharUser.swift
//  AGChat
//
//  Created by PDWS on 9/15/22.
//

import FirebaseFirestoreSwift

struct ChatUser: Codable, Identifiable {
    @DocumentID var id: String?
    let uid, email, profileImageUrl: String
}
