//
//  StreamListState.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/10/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import SwiftUI

class StreamListState: ObservableObject {
    @Published var models = [StreamRowModel]()
    let gameTitle: String

    init(gameTitle: String) {
        self.gameTitle = gameTitle
    }

    func refresh() {
        SearchStreamsUseCase.shared.execute(query: gameTitle, onCompleted: { [weak self] streams in
            self?.models = streams.map {
                StreamRowModel(stream: $0)
            }
        })
    }
}
