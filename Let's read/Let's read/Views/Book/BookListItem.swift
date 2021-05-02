//
//  BookListItem.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct BookListItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image("John Adams")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 250)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("John Adams")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("DarkColor"))
                    
                    Text("Stephen King")
                        .font(.system(size: 15))
                        .foregroundColor(Color("GrayColor"))
                    HStack {
                        StarItem(icon: "star.fill")
                        StarItem(icon: "star.fill")
                        StarItem(icon: "star.fill")
                        StarItem(icon: "star")
                        StarItem(icon: "star")
                    }
                    
                    HStack {
                        ActionUserItem(icon: "eye.fill", title: "293")
                        ActionUserItem(icon: "bookmark.fill", title: "168")
                        ActionUserItem(icon: "book.fill", title: "735")
                    }
                    Text("Sent to investigate mysterious encounters that are disrupting international shipping, Professor Aronnax, his servant Conseil, and disgruntled harpooner Ned Land are captured when their frigate is sunk during an encounter with the monster.")
                        .font(.caption)
                        .lineLimit(4)
                        .foregroundColor(Color("LightColor"))
                    HStack {
                        GenreItem(title: "Novel")
                        GenreItem(title: "Fantasy Faction")
                    }
                    
                }
            }
        }
    }
}

struct BookListItem_Previews: PreviewProvider {
    static var previews: some View {
        BookListItem()
    }
}

struct ActionUserItem: View {
    @State var icon: String
    @State var title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 12))
                .foregroundColor(Color("GrayColor"))
            Text(title)
                .font(.system(size: 13))
                .foregroundColor(Color("LightColor"))
        }
    }
}

struct StarItem: View {
    @State var icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 15))
                .foregroundColor(Color("AppColor"))
        }
        .padding(0)
    }
}

struct GenreItem: View {
    @State var title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 15))
                .foregroundColor(Color("AppColor"))
                .padding([.leading, .trailing], 10)
        }
        .padding(8)
        .overlay(RoundedRectangle(cornerRadius: 25.0)
                    .stroke(Color("AppColor"))
        )
    }
}
