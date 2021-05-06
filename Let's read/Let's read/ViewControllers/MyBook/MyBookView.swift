//
//  MyBookView.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct MyBookView: View {
    private var tabs = ["All", "Reading now", "Read", "Want to read"]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    HStack {
                        Text("My Books".uppercased())
                            .font(.system(size: 18))
                            .foregroundColor(Color("AppColor"))
                    }
                    .padding(EdgeInsets(top: 55, leading: 30, bottom: 10, trailing: 0))
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    Spacer()
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 20))
                                .foregroundColor(Color("AppColor"))
                                .padding(.trailing, 20)
                            
                        })
                        .padding([.top, .leading, .bottom], 16)
                    }
                    .padding(.trailing, 10)
                    .padding(.top, 40)
                }
                .frame(height: 80)
                .padding()
                .background(Color("NavColor"))
                // Tab
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(tabs, id: \.self) { tab in
                                if tab == "All" {
                                    TabSelected(title: tab)
                                } else {
                                    Text(tab)
                                        .font(.system(size: 18))
                                        .foregroundColor(Color("LightColor"))
                                        .padding([.leading, .trailing], 10)
                                }
                            }
                        }
                    }
                    .padding([.top, .bottom], 0)
                }
                .padding(.leading, 40)
                ScrollView(.vertical, showsIndicators: false) {
                    // Data
                    VStack {
                        ForEach(0..<30) { _ in
                            NavigationLink(destination: BookDetailView()) {
                                MyBookItem()
                                    .frame(width: _width)
                                    .padding()
                            }
                            Divider()
                                .padding(.leading, 16)
                        }
                    }
                    .padding()
                }
            }
            .padding(.bottom, 70)
            .navigationBarColor(Color("NavColor"))
            .ignoresSafeArea()
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MyBookView_Previews: PreviewProvider {
    static var previews: some View {
        MyBookView()
    }
}
