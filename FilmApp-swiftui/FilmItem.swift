//
//  FilmItem.swift
//  FilmApp-swiftui
//
//  Created by Emil Maharramov on 19.01.26.
//

import SwiftUI

struct FilmItem: View {
    var film = FilmsModel()
    var width = 0.0

    var body: some View {
        VStack(spacing:5) {
            Image(film.filmPhoto ?? "").resizable().frame(width: width)
            Text(film.filmName ?? "")
            Text("Add Packet")
                .padding(5)
                .background(.indigo)
                .foregroundColor(.white)
                .clipShape(.buttonBorder)
                .onTapGesture {
                    print("\(film.filmName ?? "") added to packet")
                }
        }
        .background(Rectangle().fill(.white).shadow(radius: 3))
    }
}
