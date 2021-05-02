//
//  BookGridItem.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct BookGridItem: View {
    var body: some View {
        VStack {
            Image("John Adams")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: _width / 2, height: 250)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("John Adams")
                    .font(.system(size: 18))
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
            }
        }
    }
}

struct BookGridItem_Previews: PreviewProvider {
    static var previews: some View {
        BookGridItem()
    }
}
