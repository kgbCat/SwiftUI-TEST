//
//  FriendsView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/29/21.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.init(.systemGray6)
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    Divider()
                    VStack {
                        Spacer()
                        NavigationLink(
                            destination: GalleryView(),
                            label: {
                                UserCellPrototype()
                            })
                    }
                }
            }
            .navigationTitle("List of my Friends")
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
