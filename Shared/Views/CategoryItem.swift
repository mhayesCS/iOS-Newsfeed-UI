//
//  CategoryItem.swift
//  NewsfeedUI
//
//  Created by Kail Hayes on 3/12/24.
//

import SwiftUI

struct CategoryItem: View {
    var article: NewsArticle
    var body: some View {
        VStack(alignment: .leading) {
            RemoteImage(url: article.urlToImage)
                .scaledToFit()
                .frame(width: 155, height: 155)
                .clipped()
                .cornerRadius(5)
            
            Text(article.title )
                .lineLimit(5)
                .font(.headline)
            
        }
        .frame(width: 155)
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(article: NewsFeed.sampleData[0])
    }
}

