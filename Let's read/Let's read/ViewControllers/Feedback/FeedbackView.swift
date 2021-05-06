//
//  FeedbackView.swift
//  Let's read
//
//  Created by SENGHORT on 5/3/21.
//

import SwiftUI

struct FeedbackView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Form {
                Section(header: Text("Photo")) {
                    
                }
                Section(header: Text("Basic Info")) {
                    // Name, Phone, Email, Any feedbacks
                }
                Section(header: Text("Thanks for taking the time to give us feedback. Though we can't review and respond to every submission, we do use feedback like yours to improve the Let's Read experience for everyone.")) {
                    
                }
            }
        }
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView()
    }
}
