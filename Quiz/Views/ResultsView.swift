// This struct defines the view of the results screen, and contains the information defined in the ResultsViewModel.
import SwiftUI

struct ResultsView: View {
    let viewModel: ResultsViewModel
    var body: some View {
        NavigationStack{
            ZStack {
                 AppColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    HStack{
                        Text("Final Score: ")
                        Text(viewModel.finalPercentText)
                    }
                    .font(.title)
                    .padding()
                    Text(viewModel.comment)
                        .padding()
                        .multilineTextAlignment(.center)
                    Text(viewModel.correctSelectionText)
                        .font(.title2)
                    Text(viewModel.incorrectSelectionText)
                        .font(.title2)
                    Spacer()
                    if viewModel.score > 75 {
                        NavigationLink(
                            destination: ImpactView().navigationBarBackButtonHidden(true), 
                            label: { 
                                BottomText(str: "Your gift!")
                                    .padding()
                            })
                }
                    NavigationLink(
                        destination: QuizView(), 
                        label: {
                            BottomText(str: "Retake Quiz")
                                .padding()  
                        })
                }
            }
        }
    }
}

