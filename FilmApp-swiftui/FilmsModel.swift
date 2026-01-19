//
//  FilmsModel.swift
//  FilmApp-swiftui
//
//  Created by Emil Maharramov on 19.01.26.
//

import Foundation

class FilmsModel: Identifiable {
    var filmId: Int?
    var filmName: String?
    var filmYear: Int?
    var filmPhoto: String?
    var category: FilmCategories?
    var yonetmen: Yonetmenler?

    init(){}

    init(filmId: Int, filmName: String, filmYear: Int, filmPhoto: String, category: FilmCategories, yonetmen: Yonetmenler) {
        self.filmId = filmId
        self.filmName = filmName
        self.filmYear = filmYear
        self.filmPhoto = filmPhoto
        self.category = category
        self.yonetmen = yonetmen
    }
}
