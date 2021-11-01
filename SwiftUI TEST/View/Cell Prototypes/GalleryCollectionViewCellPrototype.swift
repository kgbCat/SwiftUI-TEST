//
//  GalleryCollectionViewCellPrototype.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/31/21.
//

import SwiftUI

struct GalleryCollectionViewCellPrototype: View {

    var photo: String

    var body: some View {
        HStack {
            Image(photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300, alignment: .center)
        }
        .frame(width: 300, height: 300, alignment: .center)
        .cornerRadius(10)
    }
}

struct GalleryCollectionViewCellPrototype_Previews: PreviewProvider {
    static var previews: some View {
        GalleryCollectionViewCellPrototype(photo: "")
    }
}
