//
//  Todo.swift
//  Blink
//
//  Created by Muhammad Ibrahim on 07/02/2021.
//  Copyright © 2021 Muhammad Ibrahem. All rights reserved.
//

import Foundation

struct Todo: Decodable {
    let id, userId: Int
    let title: String
    let completed: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case userId
        case title
        case completed

    }
}
