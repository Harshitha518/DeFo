//This struct is a view model and defines the contents of ResultsView.
import SwiftUI

struct ResultsViewModel {
    let selectionCount: (correct: Int, incorrect: Int)
    var finalPercentText: String {
        "\(score)%"
    }   

    var comment: String {
        switch score {
        case 90..<100: return "Wow, you did so good! Check out your gift now 😆"
        case 75..<90: return "You did well! Check out your gift now 😊"
        case 50..<75: return "Nice try! Reread the information and try again for a gift! 😅"
        case 0..<50: return "Uh-oh! reread the information and try again for a gift. You got this! 😧"
        default: return "Woahhh! You're a pro at this! Check out your amazing gift! 🤯"
        }
    }
    
    var correctSelectionText: String {
        "\(selectionCount.correct) ✅"
    }
    var incorrectSelectionText: String {
        "\(selectionCount.incorrect) ❌"
    }
    var score: Int {
        selectionCount.correct * 100 / (selectionCount.correct + selectionCount.incorrect)
    }
}
