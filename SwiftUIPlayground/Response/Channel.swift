//
//  Channel.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/9/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    var id: Int64
    var broadcasterLanguage: String
    var createdAt: String
    var displayName: String
    var followers: Int
    var game: String
    var language: String
    var logo: String
    var mature: Bool
    var name: String
    var partner: Bool
    var profileBanner: String
    var profileBannerBackgroundColor: String
    var status: String
    var updatedAt: String
    var url: String
    var videoBanner: String?
    var views: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case broadcasterLanguage = "broadcaster_language"
        case createdAt = "created_at"
        case displayName = "display_name"
        case followers
        case game
        case language
        case logo
        case mature
        case name
        case partner
        case profileBanner = "profile_banner"
        case profileBannerBackgroundColor = "profile_banner_background_color"
        case status
        case updatedAt = "updated_at"
        case url
        case videoBanner = "video_banner"
        case views
    }
}
