//
//  TopGamesRepository.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

class TopGamesRepository {
    static let shared = TopGamesRepository()

    private init() {
    }

    func findAll(onCompleted: @escaping (TopGames?) -> Void) {
        TwitchAPI.shared.getTopGames(limit: 10).response {
            if let data = $0.data {
                let games = try! JSONDecoder().decode(TopGames.self, from: data)
                onCompleted(games)
            }
            onCompleted(nil)
        }
    }
}
