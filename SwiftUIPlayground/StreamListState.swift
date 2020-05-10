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

    init(gameTitle: String) {
        SearchStreamsUseCase.shared.execute(query: gameTitle, onCompleted: { [weak self] streams in
            self?.models = streams.map {
                StreamRowModel(stream: $0)
            }
        })
    }
}
