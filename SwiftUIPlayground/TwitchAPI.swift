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
    private static let baseURL: URL = URL(string: "https://api.twitch.tv/kraken")!
    private static let twitchClientID: String = Bundle.main.infoDictionary!["Twitch Client ID"] as! String
    private static let headers: HTTPHeaders = [
        "Accept": "application/vnd.twitchtv.v5+json",
        "Client-ID": TwitchAPI.twitchClientID
    ]

    private init() {
    }

    func getTopGames(limit: Int) -> DataRequest {
        let params: Parameters = [
            "limit": limit
        ]
        return AF.request(
                TwitchAPI.baseURL.appendingPathComponent("/games/top"),
                method: .get,
                parameters: params,
                headers: TwitchAPI.headers
        )
    }

    func searchStreams(query: String, limit: Int) -> DataRequest {
        let params: Parameters = [
            "limit": limit,
            "query": query
        ]
        return AF.request(
                TwitchAPI.baseURL.appendingPathComponent("/search/streams"),
                method: .get,
                parameters: params,
                headers: TwitchAPI.headers
        )
    }
}
