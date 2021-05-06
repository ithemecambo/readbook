//
//  SettingsView.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct SettingsView: View {
    @State var model = ToggleModel()
    @State private var newJobAlert = true
    @State private var notificationAlert = true
    @State private var enableSecurity = false
    @State private var syncOnlyOnWifi = true
    @State private var downloadEbookOnWifiOnly = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Toggle(isOn: $model.isDark) {
                     
                }
                .toggleStyle(CheckToggleStyle())
            }
            .background(Color.clear)
            .padding()
            
            Form {
                Section(header:
                    HStack {
                        Text("Preferences".uppercased())
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    LanguageItem(title: "ភាសាខ្មែរ")
                }
                
                Section(header:
                    HStack {
                        Text("Notifications".uppercased())
                    }
                    .padding([.top, .bottom], 16)
                ) {
                    NotificationSettingItem(title: "Enable Book New Release", isEnable: newJobAlert)
                    NotificationSettingItem(title: "Enable Notification", isEnable: notificationAlert)
                    NotificationSettingItem(title: "Enable Touch ID", isEnable: enableSecurity)
                    NotificationSettingItem(title: "Sync only on Wifi", isEnable: syncOnlyOnWifi)
                    NotificationSettingItem(title: "Download ebook on Wifi only", isEnable: downloadEbookOnWifiOnly)
                }
            }
            
            Spacer()
            HStack {
                Text("App Version: ")
                    .font(.system(size: 15))
                    .foregroundColor(Color("DarkColor"))
                Text("1.3.7")
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color("LightColor"))
            }
            .padding(.bottom, 50)
        }
        .ignoresSafeArea()
        .background(Color(.systemGroupedBackground))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct ToggleModel {
    var isDark: Bool = true {
        didSet {
            SceneDelegate.shared?.window!.overrideUserInterfaceStyle = isDark ? .dark : .light
        }
    }
}

struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "moon.circle.fill" : "moon.circle")
                    .foregroundColor(configuration.isOn ? Color.white : Color("AppColor"))
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .font(.system(size: 25))
                    .imageScale(.large)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
