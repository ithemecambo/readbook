//
//  CatalogBookItem.swift
//  Let's read
//
//  Created by SENGHORT on 5/2/21.
//

import SwiftUI

struct CatalogBookItem: View {
    @State var title: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text(title.uppercased())
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Sell All")
                        .font(.system(size: 15))
                        .foregroundColor(Color("LightColor"))
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 14))
                        .foregroundColor(Color("LightColor"))
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
