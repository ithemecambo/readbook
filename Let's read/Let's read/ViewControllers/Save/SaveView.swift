//
//  SaveView.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct SaveView: View {
    private var columns = [GridItem(.flexible()),
                           GridItem(.flexible())]
    @State private var isAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    HStack {
                        Text("Wishlist".uppercased())
                            .font(.system(size: 18))
                            .foregroundColor(Color("AppColor"))
                    }
                    .padding(EdgeInsets(top: 55, leading: 30, bottom: 10, trailing: 0))
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    Spacer()
                    HStack {
                        Button(action: {
                            self.isAlert.toggle()
                        }, label: {
                            Image(systemName: "trash.circle")
                                .font(.system(size: 20))
                                .foregroundColor(Color("AppColor"))
                            
                        })
                        .alert(isPresented: $isAlert) { () -> Alert in
                            Alert(
                                title: Text("yes"),
                                message: Text("Do you want to delete all wishlist?"),
                                primaryButton: .default(Text("Cancel")) {
                                    
                                },
                                secondaryButton: .destructive(Text("Yes")) {
                                    print("Deleting...")
                                }
                            )
                        }
                        .padding([.top, .leading, .bottom], 16)
                    }
                    .padding(.trailing, 10)
                    .padding(.top, 40)
                }
                .frame(height: 80)
                .padding()
                .background(Color("NavColor"))
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
                        ForEach(0..<60) { _ in
                            SaveItem()
                                .frame(width: _width/2 - 10)
                        }
                    }
                }
                .padding([.leading, .trailing], 10)
            }
            
            .padding(.bottom, 100)
            .navigationBarColor(Color("NavColor"))
            .ignoresSafeArea()
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SaveView_Previews: PreviewProvider {
    static var previews: some View {
        SaveView()
    }
}
