//
//  FilmCategories.swift
//  FilmApp-swiftui
//
//  Created by Emil Maharramov on 19.01.26.
//

import Foundation

class FilmCategories: Identifiable {
    var categoryId: Int?
    var categoryName: String?

    init(){}

    init(categoryId: Int, categoryName: String) {
        self.categoryId = categoryId
        self.categoryName = categoryName
    }
}
