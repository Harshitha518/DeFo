// This struct defines the final view of the app.
import SwiftUI

struct EndOfAppView: View {
    var body: some View {
        ZStack{
            AppColor.main.ignoresSafeArea()
            VStack {
                Text("Thank You!")
                    .font(.system(size: 36, weight: .heavy, design: .rounded))
                    .foregroundStyle(Color.green.secondary)
                    .padding()
                Image("HappyEarth")
                    .resizable()
                    .frame(width:300, height:300)
                Text("Thank you so much! I'm so happy you've taken time to learn about deforestation and how its affecting me, Earth! There's only one wish I want to ask from you. . . Please spend time raising awareness about deforestation, and making contributions to support reforestation and conservation efforts! Every single person can make a difference in this world! Thank you!")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal:false, vertical:true)
                    .scaledToFit()
                    .padding()
                    .border(AppColor.main, width: 5)
                    .padding()
            }
        }
    }
}
