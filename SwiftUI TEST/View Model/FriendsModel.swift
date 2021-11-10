//
//  FriendsModel.swift
//  SwiftUI TEST
//
//  Created by Anna Delova on 11/1/21.
//

//import Foundation
//
//
//class FriendsModel: ObservableObject {
//    //MARK:- Variables
//    var friends : [Friend] = []
//    private let networkService = NetworkService()
//
//    @Published var sectionDictionary : Dictionary <String , [Friend]>
//
//    //MARK:- initializer
//    init() {
//        sectionDictionary = [:]
//        sectionDictionary = getSectionedDictionary()
//    }
//
//    //MARK:- sectioned dictionary
//        func getSectionedDictionary() -> Dictionary <String , [Friend]> {
//            let sectionDictionary: Dictionary<String, [Friend]> = {
//                return Dictionary(grouping: friends, by: {
//                    let name = $0.first_name
//                    let normalizedName = name.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: .current)
//                    let firstChar = String(normalizedName.first!).uppercased()
//                    return firstChar
//                })
//            }()
//            return sectionDictionary
//        }
//
//    public func getFriends() {
//        networkService.getFriends { [weak self] vkFriends in
//            guard
//                let self = self,
//                let friends = vkFriends
//            else { return }
//            self.friends = friends
//        }
//    }
//}
//
