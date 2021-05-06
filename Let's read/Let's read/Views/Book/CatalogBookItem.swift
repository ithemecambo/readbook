//
//  CatalogBookItem.swift
//  Let's read
//
//  Created by SENGHORT on 5/2/21.
//

import SwiftUI

struct CatalogBookItem: View {
    @State var title: String = ""
    @State var toggle = false
    
    var body: some View {
        VStack {
            HStack {
                Text(title.uppercased())
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("TitleColor"))
                
                Spacer()
                Button(action: {
                    // Press to show list books
                    
                }, label: {
                    HStack {
                        Text("View All")
                            .font(.system(size: 15))
                            .foregroundColor(Color("AppColor"))
                        Image(systemName: "chevron.right.2")
                            .font(.system(size: 14))
                            .foregroundColor(Color("AppColor"))
                    }
                })
            }
        }
    }
}

struct CatalogBookItem_Previews: PreviewProvider {
    static var previews: some View {
        CatalogBookItem()
    }
}
