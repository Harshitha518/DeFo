//This is the view model for the quiz.
import SwiftUI

class QuizViewModel: ObservableObject {
   @Published var quiz = Quiz()
    
    var questionText: String {
        quiz.currentQuestion.questionText
    }
    
    var answerIndecies: Range<Int> {
        quiz.currentQuestion.possibleAnswers
            .indices
    }
    
    var correctAnswerIndex: Int {
        quiz.currentQuestion.correctAnswerIndex
    }
    
    var currentQuestionIndex: Int {
        quiz.currentQuestionIndex
    }
    
    var questions: [Question] {
        quiz.questions
    }
    
    var progressText: String {
        "Question \(quiz.currentQuestionIndex + 1) / \(quiz.questionCount)"
    }
    
    var selectionWasMade: Bool {
        quiz.selections[quiz.currentQuestion] != nil
    }
    
    var selectionCount: (Int, Int) {
        quiz.selectionCount
    }
    
    var quizIsOver: Bool {
        quiz.quizIsOver
    }
    
    func answerText(for index: Int) -> String {
       quiz.currentQuestion.possibleAnswers[index]
    }
    func advanceQuizState() {
        quiz.advancedQuizState()
    }
    func makeSelectionForCurrentQuestion(at index: Int) {
        quiz.makeSelection(at: index)
    }
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let selectedIndex = quiz.selections[quiz.currentQuestion], selectedIndex == buttonIndex else { return .clear }
        if selectedIndex == correctAnswerIndex {
            return .green
        } else {
            return .red
        }
    }
}
