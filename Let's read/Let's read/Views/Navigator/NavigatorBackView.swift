//
//  NavigatorBackView.swift
//  Let's read
//
//  Created by SENGHORT on 5/3/21.
//

import SwiftUI

struct NavigatorBackView: View {
    var title: Text?
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack {
            HStack {
                Button(action: {
                    withAnimation {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                })
                .padding([.top, .trailing, .bottom], 16)
            }
        }
        .padding(.leading, 5)
        .padding(.top, 40)
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct NavigatorDefaultView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>

    var body : some View {
        Button(action: {
            withAnimation {
                self.presentationMode.wrappedValue.dismiss()
            }
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20))
                    .foregroundColor(Color("TitleColor"))
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}
