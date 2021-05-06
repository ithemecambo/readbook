//
//  AccountItem.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct ProfileItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .cornerRadius(40)
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "camera")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    })
                }
                
                VStack(alignment: .leading, spacing: 7) {
                    Text("SENGHORT KHEANG")
                        .font(.title2)
                    Text("Senior iOS Develoer")
                        .font(.system(size: 16))
                        .italic()
                        .foregroundColor(Color("LightColor"))
                    
                }
            }
        }
    }
}

struct ProfileItem_Previews: PreviewProvider {
    static var previews: some View {
        ProfileItem()
    }
}

struct AccountItem: View {
    @State var icon: String = ""
    @State var title: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 25))
                    .foregroundColor(Color("DarkColor"))
                
                Text(title)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("DarkColor"))
                
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 20))
                    .foregroundColor(Color("LightColor"))
            }
        }
        .padding([.top, .bottom], 10)
        Divider()
            .padding(.trailing, -30)
    }
}

struct LetUsHelpYouItem: View {
    @State var icon: String = ""
    @State var title: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 25))
                .foregroundColor(Color("DarkColor"))
            
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.semibold)
                .foregroundColor(Color("DarkColor"))
            
            Spacer()
            Image(systemName: "chevron.forward")
                .font(.system(size: 20))
                .foregroundColor(Color("LightColor"))
        }
        .padding([.top, .bottom], 10)
        Divider()
            .padding(.trailing, -30)
    }
}
