//
//  GroupsView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/29/21.
//

import SwiftUI

struct GroupsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.init(.systemGray6)
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    Divider()
                    VStack {
                        GroupCellPrototype()
                    }
                }
            }
            .navigationBarTitle("List of my Groups")
            .navigationBarItems(trailing:
            Button(action: {

            }) {
                Text("Explore New Groups").foregroundColor(.gray).imageScale(.large)
                Image(systemName: "chevron.right.circle.fill")
                    .accentColor(.gray)
        })

        }
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
