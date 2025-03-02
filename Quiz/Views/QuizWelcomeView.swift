// This struct defines the welcome page of the quiz and gives information about the quiz.
import SwiftUI

struct QuizWelcomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                 AppColor.main.ignoresSafeArea()
                VStack {
                    Text("Quiz Time!")
                        .font(.system(size: 36, weight: .heavy, design: .rounded))
                        .foregroundStyle(Color.green.secondary)
                        .padding()
                    Text("Now that you have learned all about deforestation, take this short quiz to teach me about it! Select the correct answer for each of the following questions. Some of these questions you may not know, but that's okay! What's important is that you're learning about this issue!")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal:false, vertical:true)
                        .scaledToFit()
                        .padding()
                        .border(AppColor.main, width: 5)
                        .padding()
                    Spacer()
                    Image("SadEarth")
                        .resizable()
                        .frame(width:300, height:300)
                    Spacer()
                    NavigationLink(
                        destination: QuizView().navigationBarBackButtonHidden(true), 
                        label: {
                            BottomText(str: "Let's Go!")
                                .padding()
                        })
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
}
