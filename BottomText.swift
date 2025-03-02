// The BottomText struct determines the appearance of the buttons in views.
import SwiftUI

struct BottomText: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "cursorarrow.rays")
                Text(str)
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(.all)
            Spacer()
        }.background(Color.green.opacity(0.4))
    }
}
