//
//  ContentView.swift
//  FilmApp-swiftui
//
//  Created by Emil Maharramov on 19.01.26.
//

import SwiftUI

struct FilmHomePage: View {
    let category: FilmCategories
    @State private var filmList: [FilmsModel] = []

    var filteredFilms: [FilmsModel] {
        filmList.filter { $0.category?.categoryName == category.categoryName }
    }

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let itemWidth = (width - 40) / 2

            ScrollView {
                LazyVGrid(
                    columns: [GridItem(.flexible()), GridItem(.flexible())],
                    spacing: 20
                ) {
                    ForEach(filteredFilms) { film in
                        NavigationLink {
                            FilmDetail(filmItem: film)
                        } label: {
                            FilmItem(film: film, width: itemWidth)
                        }
                    }
                }
                .padding(10)
            }
            .navigationTitle(category.categoryName ?? "")
        }
        .onAppear {
            loadFilms()
        }
    }

    private func loadFilms() {
        let k1 = FilmCategories(categoryId: 1, categoryName: "Aksiyon")
        let k2 = FilmCategories(categoryId: 2, categoryName: "Drama")
        let k3 = FilmCategories(categoryId: 3, categoryName: "Bilim Kurgu")

        let y1 = Yonetmenler(yonetmenId: 1, yonetmenName: "Quentin Tarantino")
        let y2 = Yonetmenler(yonetmenId: 2, yonetmenName: "Christopher Nolan")
        let y3 = Yonetmenler(yonetmenId: 3, yonetmenName: "Nuri Bilge Ceylan")
        let y4 = Yonetmenler(yonetmenId: 4, yonetmenName: "Roman Polanski")

        filmList = [
            FilmsModel(filmId: 1, filmName: "Django", filmYear: 2014, filmPhoto: "django", category: k1, yonetmen: y1),
            FilmsModel(filmId: 2, filmName: "Interstellar", filmYear: 2015, filmPhoto: "interstellar", category: k3, yonetmen: y2),
            FilmsModel(filmId: 3, filmName: "Inception", filmYear: 2010, filmPhoto: "inception", category: k3, yonetmen: y2),
            FilmsModel(filmId: 4, filmName: "Anadoluda", filmYear: 2011, filmPhoto: "birzamanlaranadoluda", category: k2, yonetmen: y3),
            FilmsModel(filmId: 5, filmName: "The Pianist", filmYear: 2008, filmPhoto: "thepianist", category: k2, yonetmen: y4),
            FilmsModel(filmId: 6, filmName: "The Hateful Eight", filmYear: 2017, filmPhoto: "thehatefuleight", category: k1, yonetmen: y1)
        ]
    }
}

//#Preview {
//    FilmHomePage(category: FilmCategories(categoryId: 1, categoryName: "Aksiyon"))
//}
