//
//  StreamRowModel.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/10/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct StreamRowModel: Identifiable {
    var id: Int64
    var name: String
    var imageURL: URL
    var url: URL
    var description: String {
        formattedCreatedAt() + " / " + formattedNumberOfViewers()
    }
    private var numberOfViewers: Int
    private var createdAt: Date

    init(stream: Stream) {
        self.id = stream.id
        self.name = stream.channel.displayName
        self.numberOfViewers = stream.viewers
        self.imageURL = URL(string: stream.preview.medium)!
        self.url = URL(string: stream.channel.url)!
        self.createdAt = ISO8601DateFormatter().date(from: stream.createdAt)!
    }

    private func formattedCreatedAt() -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute]
        formatter.unitsStyle = .short
        return formatter.string(from: self.createdAt, to: Date())!
    }

    private func formattedNumberOfViewers() -> String {
        if numberOfViewers > 1000 {
            return String(format: "%.2fK viewers", Double(numberOfViewers) / 1000.0)
        }
        return String(format: "%d viewers", numberOfViewers)
    }
}
