//
//  NewsView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/29/21.
//

import SwiftUI

struct NewsView: View {
    var body: some View {

        NavigationView {
            ZStack {
                Color.init(.systemGray6)
                .edgesIgnoringSafeArea(.all)
                ScrollView {
                    Divider()
                    Spacer()
                    VStack {
                        NewsCellPrototype()
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
