// This struct defines the introduction screen which is displayed before the LearnView.
import SwiftUI

struct AppIntroductionView: View {
    @State var name = ""
    var body: some View {
        NavigationStack{
            ZStack{
                AppColor.main.ignoresSafeArea()
                VStack{
                    Image("SadEarth")
                        .resizable()
                        .frame(width:300, height:300)
                    Text("Hello! My name is Earth. I haven't been feeling well recently. Since I have been sick, I went to the doctors. They told me that problem was something called \("deforestation"). I don't know what that is, and I was hoping you could teach me more about it. Enter your name below and click the button to teach me!")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal:false, vertical:true)
                        .scaledToFit()
                        .padding()
                        .border(AppColor.main, width: 5)
                        .padding()
                    TextField("enter your name", text: $name)
                        .padding()
                    NavigationLink(
                        destination: LearnView(name: $name).navigationBarBackButtonHidden(true), 
                        label: {
                            BottomText(str: "Let's Start!")
                                .padding(.horizontal)
                        })
                }
            }
        }
    }
}
