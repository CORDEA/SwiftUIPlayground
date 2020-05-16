//
//  TopGameRowModel.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct TopGameRowModel: Identifiable {
    private var numberOfViewers: Int
    var id: Int64
    var name: String
    var imageURL: URL

    init(topGame: TopGame) {
        self.id = topGame.game.id
        self.numberOfViewers = topGame.viewers
        self.name = topGame.game.name
        self.imageURL = URL(string: topGame.game.logo.medium)!
    }

    func formattedNumberOfViewers() -> String {
        if numberOfViewers > 1000 {
            return String(format: "%.2fK viewers", Double(numberOfViewers) / 1000.0)
        }
        return String(format: "%d viewers", numberOfViewers)
    }
}
