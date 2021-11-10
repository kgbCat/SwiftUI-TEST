//
//  TabBarView.swift
//  SwiftUI TEST
//
//  Created by Anna Delova on 11/5/21.
//

import SwiftUI

struct TabBarView: View {

    @ObservedObject var webViewModel = WebViewModel()

    var body: some View {

            TabView {
                FriendsView()
                    .tabItem {
                        Image(systemName: "person")
                        Text( "friends")
                    }
                GroupsView()
                    .tabItem {
                        Image(systemName:"person.2")
                        Text("groups")
                    }
                NewsView()
                    .tabItem {
                        Image(systemName:"newspaper")
                        Text("news")
                    }
            }
            .accentColor(Color(#colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1)))
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button(action: {

                    //                    webViewModel.shouldGoBack = true
                    webViewModel.isAuthorised = false
                    Session.instance.token =  ""
                    Session.instance.userId = 0
                    
                }) {
                    Image(systemName: "lock").foregroundColor(.gray).imageScale(.large)
                })
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
