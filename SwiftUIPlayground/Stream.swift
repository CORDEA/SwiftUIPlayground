//
//  Stream.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/9/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct Stream: Decodable {
    var id: Int64
    var averageFPS: Float
    var channel: Channel
    var createdAt: String
    var delay: Int
    var game: String
    var isPlaylist: Bool
    var preview: Preview
    var videoHeight: Int
    var viewers: Int

    enum CodingKeys: String, CodingKey {
        case id
        case averageFPS = "average_fps"
        case channel
        case createdAt = "created_at"
        case delay
        case game
        case isPlaylist = "is_playlist"
        case preview
        case videoHeight = "video_height"
        case viewers
    }
}
