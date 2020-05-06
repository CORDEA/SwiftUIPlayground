//
//  TopGameList.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import SwiftUI

struct TopGameList: View {
    var body: some View {
        NavigationView {
            List([]) { model in
                TopGameRow(model: model)
            }
        }
    }
}

struct TopGameList_Previews: PreviewProvider {
    static var previews: some View {
        TopGameList()
    }
}
