//
//  AccountView.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct AccountView: View {
    @State private var showSetting: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    ProfileItem()
                        .padding(.leading, -100)
                    VStack {
                        AccountItem(icon: "bell", title: "Notifications")
                        NavigationLink(destination: MyReviewView(),
                            label: {
                                AccountItem(icon: "captions.bubble", title: "My Reviews")
                            })
                        Divider()
                            .padding(.trailing, -30)
                        AccountItem(icon: "doc", title: "Notes")
                    }
                    .padding(.top, 30)
                    VStack(alignment: .leading) {
                        Text("Let Us Help You".uppercased())
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.top, 40)
                        
                        LetUsHelpYouItem(icon: "lock.shield", title: "Privacy Policy")
                        LetUsHelpYouItem(icon: "shield.lefthalf.fill", title: "Condition of Use")
                        LetUsHelpYouItem(icon: "questionmark.diamond", title: "FQAs")
                        LetUsHelpYouItem(icon: "bubble.left", title: "Feedback")
                        LetUsHelpYouItem(icon: "phone.circle", title: "Contact Us")
                    }
                }
                .padding()
            }
            .navigationBarColor(Color("NavColor"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                Button(action: {
                    self.showSetting.toggle()
                }, label: {
                    Image(systemName: "gearshape")
                        .font(.system(size: 20))
                        .foregroundColor(Color("AppColor"))
                })
                .sheet(isPresented: $showSetting) {
                    SettingsView()
                }
            )
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
