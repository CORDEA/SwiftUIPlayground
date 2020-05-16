//
//  TopGame.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct TopGame: Decodable {
    var channels: Int
    var viewers: Int
    var game: Game
}
