// All opperations of the quiz are managed in the Quiz struct.
import SwiftUI

struct Quiz {
    
    let questions = Question.allQuestions.shuffled()
    
    var currentQuestionIndex = 0
    
    private(set) var selections = [Question: Int]()
    
    var quizIsOver: Bool = false
    
    var selectionCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, selectedIndex) in selections {
            if selectedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    var questionCount: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    
    mutating func advancedQuizState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        if !questions.indices.contains(nextQuestionIndex) {
            print("Quiz Over")
        } else {
            currentQuestionIndex = nextQuestionIndex
        }
    }
    mutating func makeSelection (at index: Int) {
        selections[currentQuestion] = index
    }
}
