//
//  PlaylistModel.swift
//  YoutubeClone
//
//  Created by José Luis Carrillo Padrón on 05/08/22.
//

import Foundation

struct PlayListModel: Decodable{
    let kind: String
    let etag: String
    let pageIngo: PageInfo
    let items: [Items]
    
    struct Items: Decodable{
        let kind: String
        let etag: String
        let id: String
        let snippet: String
        let contentDetails: ContentDetails
        
        
        struct Snippet: Decodable{
            let publisedAt: String
            let channelId: String
            let title: String
            let description: String
            let thumbnails: Thumbnails
            let channelTitle: String
            let localized: Localized
            
            struct Thumbnails: Decodable{
                let medium: Medium
                
                struct Medium: Decodable{
                    let url: String
                    let width: Int
                    let height: Int
                }
            }
            
            struct Localized: Decodable{
                let title: String
                let description: String
            }
        }//Snippet
        struct ContentDetails: Decodable{
            let itemCount: Int
        }
    }//Items
    
    struct PageInfo: Decodable{
        let totalResults: Int
        let resultsPerPage: Int
    }
}
