//
//  ContentView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/27/21.
//

import SwiftUI

struct MainView: View {

    @State var shouldShowMainView:Bool = false

    var body: some View {

        NavigationView {

            HStack {
                LoginView(shouldShowMainView: $shouldShowMainView)
                NavigationLink(
                    destination: tabView,
                    isActive: $shouldShowMainView) {
                    EmptyView()
                }
            }

        }
    }
}

extension MainView {
    var tabView: some View {
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
                self.shouldShowMainView = false
            }) {
                Image(systemName: "lock").foregroundColor(.gray).imageScale(.large)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
        }
    }
}


