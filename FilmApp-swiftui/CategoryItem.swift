//
//  CategoryItem.swift
//  FilmApp-swiftui
//
//  Created by Emil Maharramov on 21.01.26.
//

import SwiftUI

struct CategoryItem: View {
    var category = FilmCategories()
    var body: some View {
        Text(category.categoryName ?? "")
    }
}
