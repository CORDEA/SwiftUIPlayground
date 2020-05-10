//
//  StreamList.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/10/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import SwiftUI

struct StreamList: View {
    @ObservedObject var state: StreamListState

    var body: some View {
        List(state.models) { model in
            StreamRow(model: model)
        }
    }

    init(gameTitle: String) {
        self.state = StreamListState(gameTitle: gameTitle)
    }
}
