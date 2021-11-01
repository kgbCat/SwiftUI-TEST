//
//  FriendsView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/29/21.
//

import SwiftUI

struct FriendsView: View {

    @StateObject var friendsModel = FriendsModel()
    @State var searchTerm = ""

    var body: some View {

        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear

        return NavigationView {
            VStack{
                SearchBar(searchTerm: $searchTerm)
                List {
                    ForEach(friendsModel.sectionDictionary.keys.sorted(), id:\.self) { key in
                        if let friends = friendsModel.sectionDictionary[key]!.filter({ (friend) -> Bool in
                                                                                        self.searchTerm.isEmpty ? true :
                                                                                            "\(friend)".lowercased().contains(self.searchTerm.lowercased())}), !friends.isEmpty
                        {
                            Section(header: Text("\(key)")) {
                                ForEach(friends){ friend in
                                        ZStack {
                                            NavigationLink(
                                                destination: GalleryView(friend: friend)){
                                                EmptyView()
                                            }
                                            .opacity(0)  // to hide a disclosure indicator
                                            UserCellPrototype(friend: friend)
//                                    Text("\(friend.firstName) \(friend.lastName)")
                                }
                            }
                        }
                    }
                }.listStyle(GroupedListStyle())
                }.accentColor(.black)

            }.navigationTitle("List of my Friends")

        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
