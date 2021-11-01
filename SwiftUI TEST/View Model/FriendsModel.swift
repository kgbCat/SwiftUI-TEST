//
//  FriendsModel.swift
//  SwiftUI TEST
//
//  Created by Anna Delova on 11/1/21.
//

import Foundation


class FriendsModel: ObservableObject {
    //MARK:- Variables
    var friends : [Friend]
    @Published var sectionDictionary : Dictionary<String , [Friend]>
    //MARK:- initializer
    init() {
        friends = [
            Friend(id: 0, firstName: "Anna", lastName: "Delova", photo: "Me", message: "Всем доброго понедельника!"),
            Friend(id: 1, firstName: "Sofia", lastName: "Delova", photo: "sonya", message: " Школа бесит!"),
        ]
        sectionDictionary = [:]
        sectionDictionary = getSectionedDictionary()
    }

    //MARK:- sectioned dictionary
        func getSectionedDictionary() -> Dictionary <String , [Friend]> {
            let sectionDictionary: Dictionary<String, [Friend]> = {
                return Dictionary(grouping: friends, by: {
                    let name = $0.firstName
                    let normalizedName = name.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: .current)
                    let firstChar = String(normalizedName.first!).uppercased()
                    return firstChar
                })
            }()
            return sectionDictionary
        }
}

