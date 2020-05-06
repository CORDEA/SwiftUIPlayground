//
//  TopGameListState.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import SwiftUI

class TopGameListState: ObservableObject {
    @Published var models = [TopGameRowModel]()

    init() {
        GetTopGamesUseCase.shared.execute { [weak self] games in
            self?.models = games.map {
                TopGameRowModel(
                        id: $0.game.id,
                        numberOfViewers: $0.viewers,
                        name: $0.game.name,
                        imageURL: URL(string: $0.game.logo.medium)!
                )
            }
        }
    }
}
