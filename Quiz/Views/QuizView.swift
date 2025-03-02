// There are two structs here. QuizView defines the view of the quiz. AnswerButton defines the view of the answer buttons.
import SwiftUI

struct QuizView: View {
    @StateObject var viewModel = QuizViewModel()
    var body: some View {
        NavigationStack{
        ZStack{
             AppColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                    .frame(minHeight: 20, maxHeight: 50)
                Text(viewModel.progressText)
                Text(viewModel.questionText)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                ForEach(viewModel.answerIndecies) { index in
                    AnswerButton(text: viewModel.answerText(for: index)){
                        viewModel.makeSelectionForCurrentQuestion(at: index)
                    }
                    
                    .background(viewModel.colorForButton(at: index))
                    .disabled(viewModel.selectionWasMade)
                }
                Spacer()
                if viewModel.selectionWasMade && ((viewModel.currentQuestionIndex + 1) == viewModel.questions.count)
                {
                    NavigationLink(destination:  ResultsView(viewModel:ResultsViewModel(selectionCount: viewModel.selectionCount)) .navigationBarBackButtonHidden(true), label: {
                     BottomText(str: "End Quiz")
                       .padding()
                      })
                } else if viewModel.selectionWasMade {
                    Button(action: {viewModel.advanceQuizState()}, label: {
                        BottomText(str: "Next")
                            .padding()
                    })
                }
            }.padding(.bottom)
        }
        .navigationBarBackButtonHidden(true)
    }
}
        
}   

struct AnswerButton: View {
    let text: String
    let onClick: () -> Void
    var body: some View {
        Button(action:{
            onClick()
        }) {
            Text(text)
        
                .foregroundStyle(Color.black)
                .font(.largeTitle)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding()
        .border(Color.green.secondary, width: 3)
    }
}

