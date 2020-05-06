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
}
