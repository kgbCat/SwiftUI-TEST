//
//  GroupsView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/29/21.
//

import SwiftUI

struct GroupsView: View {

    @State private var groups: [VkGroup] = [
        VkGroup(id: 0, name:"Kamchatka", photo: "лава", message: "Adventure"),
        VkGroup(id: 1, name:"Kamchatka", photo: "лава", message: "Adventure"),
    ]

    var body: some View {

        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear


        return NavigationView {
            ZStack {
                List(groups) {group in
                    GroupCellPrototype(group: group)

                }
            }
            .navigationBarTitle("List of my Groups")
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: SearchGroupsView(),
                                        label: {
                                            Text("Explore New Groups")
                                                .foregroundColor(.gray)
                                                .imageScale(.large)
                                            Image(systemName: "chevron.right.circle.fill")
                                                .accentColor(Color(.systemTeal))
                                        }
                                    )
           )
        }
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}

