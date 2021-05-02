//
//  HomeView.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    @State private var showCancelButton: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                // Search bar
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        TextField("", text: $searchText, onEditingChanged: { isEditing in
                            self.showCancelButton = true
                        }, onCommit: {
                            print("onCommit")
                        })
                        .foregroundColor(.white)
                        .modifier(PlaceholderStyleModifier(showPlaceHolder: searchText.isEmpty,
                                                           placeholder: "Which book are you looking?"))

                        Button(action: {
                            self.searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                        }
                    }
                    .padding(EdgeInsets(top: 55, leading: 6, bottom: 10, trailing: 0))
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    
                    HStack {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "qrcode.viewfinder")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        })
                        .padding([.top, .leading, .bottom], 16)
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "mic.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        })
                        .padding()
                    }
                    .padding(.top, 40)
                }
                .frame(height: 80)
                .padding()
                .padding(.top, -10)
                .background(Color("AppColor"))
                ScrollView(.vertical, showsIndicators: false) {
                    // Banner
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                Image("")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 250)
                            }
                        }
                    }
                    // Book for you
                    VStack {
                        // Book For You
                        CatalogBookItem(title: "Books for You")
                        // row
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                }
                            }
                        }
                    }
                    .padding()
                    // Popular books
                    VStack {
                        // Popular Books
                        CatalogBookItem(title: "Popular books")
                        // row
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
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
                                }
                            }
                        }
                    }
                    .padding()
                    // Bestseller
                    VStack {
                        // Popular Books
                        CatalogBookItem(title: "Bestseller")
                        // row
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                }
                            }
                        }
                    }
                    .padding()
                    // Recommend book
                    VStack {
                        // Popular Books
                        CatalogBookItem(title: "Recomend books")
                        // row
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                    BookGridItem()
                                }
                            }
                        }
                    }
                    .padding()
                    
                }
            }
            .background(Color.black)
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
/*
 - home: house
 - search: magnifyingglass
 - comment: captions.bubble
 - scan: qrcode.viewfinder
 - edit: square.and.pencil
 - bookmark/save: bookmark
 - mybook: books.vertical
 - user: person
 - logout: power
 - grid: square.grid.2x2
 - list: list.dash
 - eye: eye
 - eye-fill: eye.fill
 - settings: gearshape
 - back: chevron.left
 - go: chevron.right
 - doc: doc.on.doc
 */
