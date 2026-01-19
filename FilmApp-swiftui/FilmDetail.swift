//
//  FilmDetail.swift
//  FilmApp-swiftui
//
//  Created by Emil Maharramov on 19.01.26.
//

import SwiftUI

struct FilmDetail: View {
    var filmItem = FilmsModel()

    var body: some View {
        VStack(spacing: 50) {
            Image(filmItem.filmPhoto ?? "")
            Text(filmItem.filmName ?? "")
        }
        .navigationTitle(filmItem.filmName ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }
}
