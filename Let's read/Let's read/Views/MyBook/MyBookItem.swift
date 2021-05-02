//
//  MyBookItem.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct MyBookItem: View {
    @State var progressValue: Float = 35.0
    
    var body: some View {
        VStack {
            HStack {
                Image("Brazen and the Beast")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 250)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Brazen and the Beast to adventure in Amazon")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("DarkColor"))
                    
                    Text("Stephen King")
                        .font(.system(size: 15))
                        .foregroundColor(Color("GrayColor"))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("38 of 250 pages")
                            .font(.system(size: 15))
                            .italic()
                            .foregroundColor(Color("LightColor"))
                        ProgressBar(value: $progressValue, barColor: Color("LightColor"),
                                    progressColor: Color("AppColor"))
                            .frame(height: 15)
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Continue Reading")
                            .font(.system(size: 18))
                            .foregroundColor(Color("AppColor"))
                            .padding([.leading, .trailing], 10)
                    })
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 24)
                                .stroke(Color("AppColor"))
                    )
                }
            }
        }
        .padding([.leading, .trailing], 16)
    }
}

struct MyBookItem_Previews: PreviewProvider {
    static var previews: some View {
        MyBookItem()
    }
}

struct TabSelected: View {
    @State var title: String
    
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding([.leading, .trailing], 10)
            Rectangle()
                .frame(height: 5)
                .foregroundColor(.red)
        }
    }
}

struct TabUnSelect: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct ProgressBar: View {
    @Binding var value: Float
    @State var barColor: Color
    @State var progressColor: Color
        
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(barColor)
                
                Rectangle()
                    .frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width),
                           height: geometry.size.height)
                    .foregroundColor(progressColor)
                    .animation(.linear)
            }
            .cornerRadius(45.0)
        }
    }
}
