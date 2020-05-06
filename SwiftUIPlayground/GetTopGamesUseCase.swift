//
//  GetTopGamesUseCase.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

class GetTopGamesUseCase {
    static let shared = GetTopGamesUseCase()

    private init() {
    }

    func execute(onCompleted: @escaping ([TopGame]) -> Void) {
        TopGamesRepository.shared.findAll { games in
            onCompleted(games?.top ?? [])
        }
    }
}
