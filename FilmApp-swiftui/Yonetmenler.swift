//
//  Yonetmenler.swift
//  FilmApp-swiftui
//
//  Created by Emil Maharramov on 19.01.26.
//

import Foundation

class Yonetmenler: Identifiable {
    var yonetmenId: Int?
    var yonetmenName: String?

    init(){}

    init(yonetmenId: Int, yonetmenName: String) {
        self.yonetmenId = yonetmenId
        self.yonetmenName = yonetmenName
    }
}
