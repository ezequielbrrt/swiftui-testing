//
//  Hike.swift
//  SwiftUITest
//
//  Created by Ezequiel Barreto on 10/02/21.
//

import Foundation

struct Hike {
    let name: String
    let imateURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        [
            Hike(name: "test", imateURL: "test", miles: 5),
            Hike(name: "test2", imateURL: "test", miles: 5),
            Hike(name: "test3", imateURL: "test", miles: 5),
            Hike(name: "test4", imateURL: "test", miles: 5)
        ]
    }
}
