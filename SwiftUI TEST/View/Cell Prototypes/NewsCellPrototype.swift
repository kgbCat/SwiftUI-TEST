//
//  NewsCellPrototype.swift
//  Cell Prototype
//
//  Created by Anna Delova on 10/31/21.
//

import SwiftUI

struct NewsCellPrototype: View {
    var body: some View {


        VStack {
            UserCellPrototype()
            Image(systemName: "pencil")
                .resizable()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("В беседах появилась возможность собирать деньги на совместные покупки: делайте подарки друзьям, начинайте общее дело или копите на вечеринку")
//                .frame(width: .infinity, height: .infinity, alignment: .leading)
                .modifier(Cell())
                .modifier(SubTitle(color: .black))

            HStack {
                Image(systemName: "heart")
                Image(systemName: "arrow.right")
            }

        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.leading)
        .padding(.trailing)

    }
}

struct NewsCellPrototype_Previews: PreviewProvider {
    static var previews: some View {
        NewsCellPrototype()
    }
}
