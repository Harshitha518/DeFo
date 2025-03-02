// This view provides the two tabs of the application.
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            AppIntroductionView()
                .tabItem {Label("Learn", systemImage: "tree")}
            QuizWelcomeView()
                .tabItem {Label("Quiz", systemImage: "doc.questionmark")}
        }
    }
}
