//
//  StreamRow.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/10/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation
import SwiftUI
import URLImage

struct StreamRow: View {
    var model: StreamRowModel

    var body: some View {
        HStack {
            URLImage(model.imageURL) { proxy in
                proxy.image
                        .resizable()
                        .frame(width: 56.0, height: 56.0)
                        .clipShape(RoundedRectangle(cornerRadius: 4.0))
            }.padding(16.0)
            VStack(alignment: .leading, spacing: 2.0) {
                Text(model.description).font(.caption)
                Text(model.name).font(.body)
            }
            Spacer()
        }.frame(minHeight: 72.0)
    }
}
