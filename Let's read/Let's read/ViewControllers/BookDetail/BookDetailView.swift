//
//  BookDetailView.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct BookDetailView: View {
    @State private var selection = 0
    private let items: [String] = ["Synopsis", "Reviews"]
    
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
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: "icloud.and.arrow.down")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "square.and.arrow.down")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            
                        })
                    }
                    .padding([.top, .leading, .bottom], 16)
                }
                .padding(.trailing, 5)
                .padding(.top, 40)
            }
            .frame(height: 80)
            .padding()
            .background(Color.clear)
            
            ScrollView(.vertical, showsIndicators: false) {
                // Cover
                Image("Beloved")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped()
                
                VStack(alignment: .leading) {
                    HStack {
                        Image("The-Water-Dancer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                            .padding(.bottom, 20)
                            .shadow(radius: 10)
                        
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading, spacing: 6) {
                                Text("The Haunting of Hill House")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                Text("Stephen King")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                
                                Text("Published: 19-Feb-2020")
                                    .font(.caption)
                                    .italic()
                                    .foregroundColor(.white)
                                    .padding(.top, 10)
                                
                                HStack {
                                    StarItem(icon: "star.fill")
                                    StarItem(icon: "star.fill")
                                    StarItem(icon: "star.fill")
                                    StarItem(icon: "star")
                                    StarItem(icon: "star")
                                }
                            }
                            
                            HStack {
                                Button(action: {}, label: {
                                    Text("Read now".uppercased())
                                        .font(.system(size: 12))
                                        .foregroundColor(.white)
                                    
                                })
                                .padding(20)
                                .background(Color("AppColor"))
                                .cornerRadius(30)
                                
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "bookmark.fill")
                                        .font(.system(size: 20))
                                        .foregroundColor(Color("AppColor"))
                                })
                                .padding()
                                .background(Color("GrayColor"))
                                .cornerRadius(50)
                            }
                            .padding()
                            .padding(.bottom, 30)
                            .padding(.leading, -20)
                        }
                        .frame(width: _width - 170)
                        .padding(.trailing, 0)
                        .padding(.top, 0)
                    }
                }
                .padding(.top, -170)
                .padding(.leading, 10)
                
                // Tab
                VStack {
                    HStack(spacing: 0) {
                        Picker(selection: $selection, label: Text("")) {
                            ForEach(0..<items.count, id: \.self) { index in
                                Text(self.items[index]).tag(index)
                                    .padding()
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    .padding()
                    .background(Color.clear)
                }
                .padding([.leading, .trailing], 5)
                
                // Tab
                VStack {
                    Text(dataStr)
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                }
                .padding(20)
                
                // Similar Books
                VStack(alignment: .leading) {
                    Text("Similar Books".uppercased())
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("TitleColor"))
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<15) { _ in
                                    SimilarItem()
                                }
                            }
                        }
                    }
                }
                .padding()
            }
            .padding(.bottom, 30)
        }
        .padding(.bottom, 60)
        .navigationBarColor(Color.clear)
        .ignoresSafeArea()
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}

struct SimilarItem: View {
    var body: some View {
        HStack {
            Image("John Adams")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .background(Color("GrayColor").opacity(0.2))
            
        }
        .padding(.trailing, 8)
    }
}
