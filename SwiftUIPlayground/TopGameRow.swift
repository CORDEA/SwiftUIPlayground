//
//  TopGameRow.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import SwiftUI
import URLImage

struct TopGameRow: View {
    var model: TopGameRowModel

    var body: some View {
        HStack {
            URLImage(model.imageURL) { proxy in
                proxy.image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 56.0, height: 56.0)
            }.padding(16.0)
            VStack(alignment: .leading, spacing: 2.0) {
                Text(model.name).font(.body)
                Text(model.formattedNumberOfViewers()).font(.caption)
            }
            Spacer()
        }.frame(minHeight: 72.0)
    }
}

//struct TopGameRow_Previews: PreviewProvider {
//    static var previews: some View {
//        TopGameRow(model: TopGameRowModel(id: 0, numberOfViewers: 1209, name: "Game", imageURL: URL(string: "https://example.com")!))
//    }
//}
