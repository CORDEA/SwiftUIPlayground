//
//  Streams.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/9/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct Streams: Decodable {
    var total: Int
    var streams: [Stream]

    enum CodingKeys: String, CodingKey {
        case total = "_total"
        case streams
    }
}
