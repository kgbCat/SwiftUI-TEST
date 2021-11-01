//
//  Friend.swift
//  SwiftUI TEST
//
//  Created by Anna Delova on 11/1/21.
//

import SwiftUI

struct Friend: Identifiable {
    var id: Int
    var firstName: String
    var lastName: String
    var photo: String
    var message: String

    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
