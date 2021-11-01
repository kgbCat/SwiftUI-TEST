//
//  GroupCellPrototype.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/27/21.
//

import SwiftUI

struct GroupCellPrototype: View {

    var group: VkGroup

    var body: some View {

        HStack {
            Image(group.photo)
                .resizable()
                .groupPhotoStyle()

            VStack(alignment: .leading) {
                Text(group.name)
                .groupTitleStyle()
                Text(group.message)
                .groupSubtitleStyle()
            }
            Spacer()
        }
//        .frame(width: .infinity, height: 80, alignment: .leading)
    }
}

struct GroupCellPrototype_Previews: PreviewProvider {
    static var previews: some View {
        GroupCellPrototype(group: VkGroup(id: 0, name: "hg", photo: "лава", message: "jhg"))
    }
}
extension View {
    func groupTitleStyle() -> some View {
        modifier(Title(color: Color(.systemTeal) ))
    }
}
extension View {
    func groupSubtitleStyle() -> some View {
        modifier(SubTitle(color: Color.black))
    }
}
extension View {
    func groupPhotoStyle() -> some View {
        modifier(Photo())
    }
}
extension View {
    func groupCellStyle() -> some View {
        modifier(Cell())
    }
}



