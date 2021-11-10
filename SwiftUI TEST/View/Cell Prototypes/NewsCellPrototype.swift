//
//  NewsCellPrototype.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/31/21.
//

import SwiftUI

struct NewsCellPrototype: View {

//    var item: VkItem
    var profile: VkProfile

    var body: some View {


        VStack {
            HStack {
                KingfisferImageView(url: profile.photo100)           .resizable()
                    .modifier(Photo())
                Text(profile.fullName)
                    .foregroundColor(.black)
            }
            .frame(minWidth: 0, idealWidth: 250, maxWidth: 360, minHeight: 0, idealHeight: 80,
                   maxHeight: 80, alignment: .leading)
            .background(Color(.systemGray6))
            .cornerRadius(30)
            Image(systemName: "pencil")
//            KingfisferImageView(url: sizes.url)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 0, idealWidth: 250, maxWidth: 360, minHeight: 0, idealHeight: 250,
                       maxHeight: 250, alignment: .center)
            Text(profile.firstName)
                .modifier(SubTitle(color: .black))
                .frame(minWidth: 0, idealWidth: 250, maxWidth: 360, minHeight: 0, idealHeight: 150,
                       maxHeight: 150, alignment: .center)

            HStack {
                Image(systemName: "heart")
                    .foregroundColor(.red)
                Image(systemName: "arrow.right")
                    .foregroundColor(.gray)
            }
        }

    }
}

struct NewsCellPrototype_Previews: PreviewProvider {
    static var previews: some View {
//        NewsCellPrototype(item: VkItem(id: 0, date: 0, text: "", likes: 0, attachments: Attachments(photo: NewsPhoto(id: 0, sizes: Sizes(url: "", type: "m")))), profile: VkProfile(firstName: "", lastName: "", id: 0, photo50: ""))

        NewsCellPrototype(profile: VkProfile(firstName: "", lastName: "", id: 0, photo100: ""))
    }
}
