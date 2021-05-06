//
//  MyReviewView.swift
//  Let's read
//
//  Created by SENGHORT on 5/3/21.
//

import SwiftUI

struct MyReviewView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0..<27) { _ in
                    MyReviewItem()
                }
            }
        }
        .padding()
        .navigationBarTitle("My Reviews").foregroundColor(Color("TitleColor"))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: HStack {
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
        })
    }
}

struct MyReviewView_Previews: PreviewProvider {
    static var previews: some View {
        MyReviewView()
    }
}

struct MyReviewItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "book.fill")
                    .font(.system(size: 30))
                    .foregroundColor(Color("AppColor"))
                    .frame(width: 70, height: 70)
                    .background(Color("GrayColor").opacity(0.3))
                    .cornerRadius(35)
                    
                VStack(alignment: .leading, spacing: 5) {
                    Text("Catling's Bane")
                        .font(.system(size: 15))
                        .foregroundColor(Color("TitleColor"))
                    Text("The rose shield book")
                        .font(.system(size: 13))
                        .foregroundColor(Color("LightColor"))
                }
            }
            DashLine()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                .frame(height: 1)
                .padding(.top, 15)
            
            HStack {
                Text("21 June, 2019")
                    .font(.system(size: 15))
                    .foregroundColor(Color("TitleColor"))
                Spacer()
                HStack {
                    StarItem(icon: "star.fill")
                    StarItem(icon: "star.fill")
                    StarItem(icon: "star.fill")
                    StarItem(icon: "star")
                    StarItem(icon: "star")
                }
                .padding([.top, .bottom], 15)
            }
            Text(dataStr)
                .font(.system(size: 15))
                .foregroundColor(Color("LightColor"))
                .lineLimit(5)
        }
        .padding(.vertical, 10)
    }
}

struct DashLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}
