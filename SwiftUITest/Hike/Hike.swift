//
//  Hike.swift
//  SwiftUITest
//
//  Created by Ezequiel Barreto on 10/02/21.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        [
            Hike(name: "test", imageURL: "sal", miles: 5),
            Hike(name: "test2", imageURL: "sal", miles: 5),
            Hike(name: "test3", imageURL: "sal", miles: 5),
            Hike(name: "test4", imageURL: "sal", miles: 5)
        ]
    }
}
