//
//  StreamsRepository.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/9/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

class StreamsRepository {
    static let shared = StreamsRepository()

    private init() {
    }

    func find(query: String, onCompleted: @escaping (Streams?) -> Void) {
        TwitchAPI.shared.searchStreams(query: query, limit: 10).response {
            if let data = $0.data {
                let streams = try! JSONDecoder().decode(Streams.self, from: data)
                onCompleted(streams)
            } else {
                onCompleted(nil)
            }
        }
    }
}
