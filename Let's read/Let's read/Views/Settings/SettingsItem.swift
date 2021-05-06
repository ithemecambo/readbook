//
//  SettingsItem.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct SettingsItem: View {
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
    }
}

struct SettingsItem_Previews: PreviewProvider {
    static var previews: some View {
        SettingsItem()
    }
}

struct LanguageItem: View {
    @State var title: String = ""
    
    var body: some View {
        HStack {
            Image("khmer-flag")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .cornerRadius(15)
            
            Text(title)
                .fontWeight(.bold)
            
            Spacer()
            Image(systemName: "chevron.forward")
                .font(.system(size: 20))
                .foregroundColor(.gray)
        }
        .padding([.top, .bottom], 10)
    }
}

struct NotificationSettingItem: View {
    @State var title: String = ""
    @State var logo: String = ""
    @State var isEnable: Bool = false
    
    var body: some View {
        HStack {
            Toggle(isOn: $isEnable,
                   label: {
                    Image(systemName: logo)
                    Text(title)
                        .fontWeight(.regular)
            })
        }
        .toggleStyle(SwitchToggleStyle(tint: Color("AppColor")))
        .padding([.top, .bottom], 10)
    }
}
