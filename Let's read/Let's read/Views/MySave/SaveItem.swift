//
//  SaveItem.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct SaveItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Image("life-of-adventure")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 250)
                    .background(Color("GrayColor").opacity(0.2))
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "bookmark.fill")
                            .font(.system(size: 20))
                            .foregroundColor(Color("AppColor"))
                    })
                    .padding(10)
                    .background(Color("GrayColor").opacity(0.9))
                    .cornerRadius(50)
                }
                .padding(.top, -115)
                .padding(.leading, 100)
            }
            VStack(alignment: .leading, spacing: 6) {
                Text("Life of Adventure Amazon")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("DarkColor"))
                
                Text("Stephen King")
                    .font(.system(size: 15))
                    .foregroundColor(Color("GrayColor"))
            }
        }
        .padding(.trailing, 10)
    }
}

struct SaveItem_Previews: PreviewProvider {
    static var previews: some View {
        SaveItem()
    }
}
