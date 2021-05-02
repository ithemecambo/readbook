//
//  ContentView.swift
//  Let's read
//
//  Created by SENGHORT on 5/1/21.
//

import SwiftUI

struct ContentView: View {
    @State var toggle = false
    @State var tag = 0
    @State private var active: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 24) {
                Text("toggle pushed me")
                    .navigatePush(whenTrue: $toggle)
                Text("tag pushed me (2)")
                    .navigatePush(when: $tag, matches: 2)
                Text("tag pushed me (4)")
                    .navigatePush(when: $tag, matches: 4)

                Button("toggle") {
                    self.toggle = true
                }

                Button("set tag 2") {
                    self.tag = 2
                }

                Button("set tag 4") {
                    self.tag = 4
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
