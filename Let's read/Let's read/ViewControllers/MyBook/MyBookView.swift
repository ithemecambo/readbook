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
                .padding()
                ScrollView(.vertical, showsIndicators: false) {
                    // Data
                    VStack {
                        ForEach(0..<30) { _ in
                            MyBookItem()
                                .frame(width: _width)
                                .padding()
                            Divider()
                                .padding(.leading, 16)
                        }
                    }
                }
            }
            .navigationBarItems(trailing:
                Button(action: {
                    
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20))
                        .foregroundColor(Color("AppColor"))
                    
                })
            )
            .navigationBarColor(Color.white)
            .navigationTitle(
                Text("My Books")
                    .foregroundColor(.black)
            )
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MyBookView_Previews: PreviewProvider {
    static var previews: some View {
        MyBookView()
    }
}
