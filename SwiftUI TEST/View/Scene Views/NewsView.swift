//
//  NewsView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/29/21.
//

import SwiftUI

struct NewsView: View {

    @State var newsItems: [VkItem] = []
    @State var newsProfiles: [VkProfile] = []

//    @ObservedObject var viewModel: FriendsModel

    var body: some View {
        
        NavigationView {
            VStack {
                Divider()
                Spacer()
                List(newsProfiles) { profile in
                    NewsCellPrototype(profile: profile)
                }
                .onAppear{
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
            .navigationTitle("Whats New Today")
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
