//
//  PlayListItemsModel.swift
//  YoutubeClone
//
//  Created by José Luis Carrillo Padrón on 06/08/22.
//

import Foundation

struct PlaylistItemsModel: Decodable{
    let kind: String
    let etag: String
    let items: [PlaylistItems]
    let pageInfo : PageInfo
    
    struct PlaylistItems: Decodable{
        let kind : String
        let etag : String
        let id : String
        let snippet : VideoModel.Item.Snippet
    }
    
    struct PageInfo: Decodable{
        let totalResults: Int
        let resultsPerPage: Int
    }
}
