//
//  Game.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct Game: Decodable {
    var id: Int64
    var box: GameBox
    var giantbombID: Int64
    var logo: GameLogo
    var name: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case box
        case giantbombID = "giantbomb_id"
        case logo
        case name
    }
}
