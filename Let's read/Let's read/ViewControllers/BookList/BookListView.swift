//
//  BookListView.swift
//  Let's read
//
//  Created by SENGHORT on 5/2/21.
//

import SwiftUI

struct BookListView: View {
    @State private var switchList = true
    private var column = [GridItem(.flexible())]
    private var columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            HStack {
                NavigatorBackView()
                Spacer()
                HStack {
                    Text("Popular Books".uppercased())
                        .font(.system(size: 18))
                        .foregroundColor(Color("AppColor"))
                }
                .padding(EdgeInsets(top: 55, leading: 30, bottom: 10, trailing: 0))
                .foregroundColor(.white)
                .cornerRadius(5)
                Spacer()
                HStack {
                    Button(action: {
                        withAnimation {
                            self.switchList.toggle()
                        }
                    }, label: {
                        Image(systemName: self.switchList ? "square.grid.2x2" : "list.dash")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    })
                    .padding([.top, .leading, .bottom], 16)
                }
                .padding(.trailing, 5)
                .padding(.top, 40)
            }
            .frame(height: 80)
            .padding()
            .background(Color("NavColor"))
            
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: switchList ? columns : column) {
                        if switchList {
                            ForEach(0..<40) { _ in
                                NavigationLink(destination: BookDetailView(),
                                label: {
                                    BookGridItem()
                                })
                            }
                        } else {
                            ForEach(0..<40) { _ in
                                NavigationLink(destination: BookDetailView(),
                                label: {
                                    BookListItem()
                                })
                            }
                        }
                    }
                }
                .padding(.top, 10)
            }
        }
        .padding(.top, 0)
        .padding(.bottom, 90)
        .navigationBarColor(Color("NavColor"))
        .ignoresSafeArea()
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
