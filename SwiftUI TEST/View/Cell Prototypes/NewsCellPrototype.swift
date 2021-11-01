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
            HStack {
                Image("Me")
                    .resizable()
                    .modifier(Photo())
                Text("Anna Delova")
                    .foregroundColor(.black)
            }
            .frame(minWidth: 0, idealWidth: 250, maxWidth: 360, minHeight: 0, idealHeight: 80,
                   maxHeight: 80, alignment: .leading)
            .background(Color(.systemGray6))
            .cornerRadius(30)
            Image(systemName: "pencil")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 0, idealWidth: 250, maxWidth: 360, minHeight: 0, idealHeight: 250,
                       maxHeight: 250, alignment: .center)
            Text("В беседах появилась возможность собирать деньги на совместные покупки: делайте подарки друзьям, начинайте общее дело или копите на вечеринку")
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
        NewsCellPrototype()
    }
}
