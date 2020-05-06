//
//  TwitchAPI.swift
//  SwiftUIPlayground
//
//  Created by Yoshihiro Tanaka on 5/6/20.
//  Copyright © 2020 Yoshihiro Tanaka. All rights reserved.
//

import Alamofire
import Foundation

class TwitchAPI {
    static let shared = TwitchAPI()
    private static let baseURL: URL = URL(string: "https://api.twitch.tv/kraken/")!

    private init() {
    }

    func getTopGames(limit: Int) -> DataRequest {
        let params: Parameters = [
            "limit": limit
        ]
        return AF.request(TwitchAPI.baseURL.appendingPathComponent("/games/top"), method: .get, parameters: params)
    }
}
