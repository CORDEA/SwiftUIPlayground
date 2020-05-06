//
//  TopGameRowModel.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct TopGameRowModel {
    private var numberOfViewers: Int
    var name: String
    var imageURL: URL

    init(numberOfViewers: Int, name: String, imageURL: URL) {
        self.numberOfViewers = numberOfViewers
        self.name = name
        self.imageURL = imageURL
    }

    func formattedNumberOfViewers() -> String {
        if numberOfViewers > 1000 {
            return String(format: "%.2fK viewers", Double(numberOfViewers) / 1000.0)
        }
        return String(format: "%d viewers", numberOfViewers)
    }
}
