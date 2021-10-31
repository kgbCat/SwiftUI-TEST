//
//  GalleryView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/31/21.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        NavigationView {

            ScrollView(.horizontal) {
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10)
                {
                    GalleryCollectionViewCellPrototype(photoName: "Me")
                    GalleryCollectionViewCellPrototype(photoName: "sonya")
                    GalleryCollectionViewCellPrototype(photoName: "fox")
                    }

            }
            .navigationBarTitle("Photo Gallery", displayMode: .inline)
            }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
