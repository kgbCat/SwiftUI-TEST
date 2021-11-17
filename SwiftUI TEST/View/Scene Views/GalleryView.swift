//
//  GalleryView.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/31/21.
//

import SwiftUI
import QGrid

struct GalleryView: View {

    @State var photos: [AlbumPhoto] = []
    let userId:Int
    var sorted: [String] = []


    var body: some View {
        NavigationView {

            QGrid(photos, columns: 2) { photo in
                
                GalleryCollectionViewCellPrototype(likesCount: photo.likes.count, url: photo.sizes.first(where: { ("x").contains($0.type) })?.url ?? "")
            }
            .onAppear {
                NetworkService().getPhotos(userID: userId, completion: { (photos) in
                    guard let photos = photos else { return }
                    self.photos = photos
                })
            }
            
//            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
//
//                List {
//                    ForEach(photos, id:\.self) { photo in
//                        GalleryCollectionViewCellPrototype(likesCount: photo.likes.count, url: photo.sizes.first(where: { ("x").contains($0.type) })?.url ?? "")
//                    }
//                }
//                List(photos) { photo in
////                    let url = photo.sizes.first(where: { ("x").contains($0.type) })?.url ?? ""
////                    let likesCount = photo.likes.count
//                    GalleryCollectionViewCellPrototype(likesCount: photo.likes.count, url: photo.sizes.first(where: { ("x").contains($0.type) })?.url ?? "")
//
//                }
//                .onAppear {
//                    NetworkService().getPhotos(userID: userId, completion: { (photos) in
//                        guard let photos = photos else { return }
//                        self.photos = photos
//                    })
//                }
            }

            .navigationBarTitle("Photo Gallery", displayMode: .inline)
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(userId: 0)
    }
}
