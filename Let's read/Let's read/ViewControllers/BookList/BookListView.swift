//
//  BookListView.swift
//  Let's read
//
//  Created by SENGHORT on 5/2/21.
//

import SwiftUI

struct BookListView: View {
    @State private var switchList = true
    @Environment(\.presentationMode) var presentationMode
    private var column = [GridItem(.flexible())]
    private var columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: switchList ? columns : column, alignment: .center) {
                        if switchList {
                            BookGridItem()
                            BookGridItem()
                            BookGridItem()
                            BookGridItem()
                            BookGridItem()
                            BookGridItem()
                            BookGridItem()
                            BookGridItem()
                            BookGridItem()
                            BookGridItem()
                        } else {
                            BookListItem()
                            BookListItem()
                            BookListItem()
                            BookListItem()
                            BookListItem()
                            BookListItem()
                            BookListItem()
                            BookListItem()
                            BookListItem()
                        }
                    }
                }
                .padding()
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20))
                        .foregroundColor(Color("AppColor"))
                })
            )
            .navigationBarItems(trailing:
                Button(action: {
                    withAnimation {
                        self.switchList.toggle()
                    }
                }, label: {
                    Image(systemName: self.switchList ? "square.grid.2x2" : "list.dash")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                })
            )
            .navigationBarColor(Color("AppColor"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(Text("Popular Books".uppercased()))
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
