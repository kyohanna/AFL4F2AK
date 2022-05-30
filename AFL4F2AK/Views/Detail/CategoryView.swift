//
//  CategoryView.swift
//  AFL4F2AK
//
//  Created by SIFT-DBT Telkom Air 10 on 31/05/22.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var destinations: [Destination] {
        return Destination.all.filter{ $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            DestinationList(destinations: destinations)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.restaurant)
    }
}
