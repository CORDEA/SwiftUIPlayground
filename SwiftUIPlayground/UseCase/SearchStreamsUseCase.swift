//
//  SearchStreamsUseCase.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/10/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

class SearchStreamsUseCase {
    static let shared = SearchStreamsUseCase()

    private init() {
    }

    func execute(query: String, onCompleted: @escaping ([Stream]) -> Void) {
        StreamsRepository.shared.find(query: query, onCompleted: { streams in
            onCompleted(streams?.streams ?? [])
        })
    }
}
