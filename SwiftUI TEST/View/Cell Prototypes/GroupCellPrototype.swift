//
//  GroupCellPrototype.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/27/21.
//

import SwiftUI

struct GroupCellPrototype: View {
    var body: some View {

        HStack(alignment: .center) {
            Image("лава")
                .resizable()
                .groupPhotoStyle()

            VStack(alignment: .leading) {
                Text("Kamchatka")
                .groupTitleStyle()
                Text("Adventures")
                .groupSubtitleStyle()
            }
        }
        .cellStyle()
    }
}

struct GroupCellPrototype_Previews: PreviewProvider {
    static var previews: some View {
        GroupCellPrototype()
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



