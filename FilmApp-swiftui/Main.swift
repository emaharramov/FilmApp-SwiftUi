//
//  Main.swift
//  FilmApp-swiftui
//
//  Created by Emil Maharramov on 21.01.26.
//

import SwiftUI

struct Main: View {
    @State private var categoryList: [FilmCategories] = []

    var body: some View {
        NavigationStack {
            List {
                ForEach(categoryList) { category in
                    NavigationLink {
                        FilmHomePage(category: category)
                    } label: {
                        CategoryItem(category: category)
                    }
                }
            }
            .navigationTitle("Categories")
        }
        .onAppear {
            categoryList = [
                FilmCategories(categoryId: 1, categoryName: "Aksiyon"),
                FilmCategories(categoryId: 2, categoryName: "Drama"),
                FilmCategories(categoryId: 3, categoryName: "Bilim Kurgu")
            ]
        }
    }
}

#Preview {
    Main()
}
