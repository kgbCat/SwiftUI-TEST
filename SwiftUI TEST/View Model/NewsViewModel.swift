//
//  NewsViewModel.swift
//  SwiftUI TEST
//
//  Created by Anna Delova on 11/14/21.
//

import SwiftUI

class NewsViewModel: ObservableObject {
    @Published var newsItems = [VkItem]()
    @Published var newsProfiles = [VkProfile]()


    func load() {
        NetworkService().getNews { (items, profiles) in
            guard
                let items = items,
                let profiles = profiles
            else { return }
            self.newsItems = items
            self.newsProfiles = profiles
        }
    }



}
