//
//  TopGames.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct TopGames: Decodable {
    var total: Int
    var top: [TopGame]

    enum CodingKeys: String, CodingKey {
        case total = "_total"
        case top
    }
}
