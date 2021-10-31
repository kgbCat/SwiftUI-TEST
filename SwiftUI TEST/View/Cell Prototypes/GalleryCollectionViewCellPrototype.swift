//
//  GalleryCollectionViewCellPrototype.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/31/21.
//

import SwiftUI

struct GalleryCollectionViewCellPrototype: View {
    var photoName: String = "Me"

    var body: some View {
        HStack {
            Image(photoName)
                .resizable()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(15)
                .aspectRatio(contentMode: .fill)

        }
    }
}

struct GalleryCollectionViewCellPrototype_Previews: PreviewProvider {
    static var previews: some View {
        GalleryCollectionViewCellPrototype(photoName: "")
    }
}
