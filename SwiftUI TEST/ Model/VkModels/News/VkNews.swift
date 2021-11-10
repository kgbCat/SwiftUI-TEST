//
//  VkNews.swift
//  SwiftUI TEST
//
//  Created by Anna Delova on 11/9/21.
//

import Foundation

struct NewsResponse: Codable {

    let vKresponse: VkNews
    enum CodingKeys: String, CodingKey {
        case vKresponse = "response"
    }
}

struct VkNews: Codable {
    let items: [VkItem]
    let profiles: [VkProfile]

    enum CodingKeys: String, CodingKey {
        case items = "items"
        case profiles = "profiles"
    }
}
// Items
struct VkItem: Codable, Identifiable {

    let id: Int
//    let date: Int
    let text: String?
//    let likes: Likes
    let attachments: [Attachments]

    enum CodingKeys: String, CodingKey {
        case id = "source_id"
//        case date = "date"
        case text = "text"
//        case likes = "likes"
        case attachments = "atachments"
    }
}

struct Attachments: Codable {
    let photo: NewsPhoto

    enum CodingKeys: String, CodingKey {
        case photo = "photo"

    }
}

// Photos
struct NewsPhoto: Codable {
//    let id: Int
    let sizes: [Sizes]

    enum CodingKeys: String, CodingKey {
//        case id = "owner_id"
        case sizes = "sizes"
    }
}

struct Sizes: Codable {
    let url: String
    let type: String

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case type = "type"
    }
}

//struct Likes: Codable {
//    let count: Int
//}

// Profiles

struct VkProfile: Codable, Identifiable {

    let firstName: String
    let lastName: String
    let id: Int
    let photo100: String

    var fullName: String {
        "\(firstName) \(lastName)"
    }

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case photo100 = "photo_100"
        case id = "id"
    }

}
