// This struct defines all the questions, answer choices, and correct answers of the quiz.
import SwiftUI

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "What is deforestation?",
                 possibleAnswers: [
                    "a. The use of fossil fuels",
                    "b. The clearing of forests",
                    "c. Plastic in the ocean",
                    "d. Pulling out weeds in a garden"
                 ], 
                 correctAnswerIndex: 1),
        Question(questionText: "What are effects of deforestation?",
                 possibleAnswers: [
                    "a. Animals loose their habitat and food",
                    "b. Indegonous people loose their homes",
                    "c. Oxygen in the atmosphere increases", 
                    "d. Both answers a. and b."
                 ], 
                 correctAnswerIndex: 3),
        Question(questionText: "Which of the following are enviormental effects of deforestation?",
             possibleAnswers: [
                "a. More carbon dioxide",
                "b. Disturbance in the water cycle",
                "c. Reduced biodiversity", 
                "d. All of the above"
             ], 
             correctAnswerIndex: 3),
        Question(questionText: "What natural factor can cause deforestation?",
                 possibleAnswers: [
                    "a. Flooding",
                    "b. Wildfires",
                    "c. Snowing", 
                    "d. Hailing"
                 ], 
                 correctAnswerIndex: 1),
        Question(questionText: "Which is not a direct effect of deforestation?",
                 possibleAnswers: [
                    "a. Extinction of animals and plants",
                    "b. Soil prone to erosion",
                    "c. Rising of sea levels", 
                    "d. All of these are effects of deforestation"
                 ], 
                 correctAnswerIndex: 2), 
        Question(questionText: "What is one reason we need to protect rainforests?",
                 possibleAnswers: [
                    "a. They produce carbon dioxide, which is essential",
                    "b. They are home to a huge number of plants and animals",
                    "c. Both answers a. and b.", 
                    "d. None of the above"
                 ], 
                 correctAnswerIndex: 1),
           Question(questionText: "How much of our rainforests have we lost?",
                        possibleAnswers: [
                            "a. One third of our forests",
                            "b. One half of our forests",
                            "c. No forest has been lost", 
                            "d. One fourth of our forests"
                        ], 
                        correctAnswerIndex: 0),
        Question(questionText: "Which three places are being affected the most by deforestation?", 
                 possibleAnswers: [
                    "a. Sahara desert, Mexico, and India", 
                    "b. Amazon rainforest, Tundra, and Indonesia",
                    "c. China, Tongass National forest, and Kanabalu National forest",
                    "d. Amazon rainforest, Indonesia Borneo, and Africa"
                ], 
                 correctAnswerIndex: 3),
        Question(questionText: "Do businesses and companies lead to deforestation?", possibleAnswers: [
        "a. Yes, all businesses contribute to deforestation",
        "b. No, businesses do not contribute to deforestation",
        "c. No, in fact all businesses help decrease deforestation",
        "d. Yes, some businesses contribute to deforestation, but there are also responsible and sustainable buisinesses."], correctAnswerIndex: 3),
        Question(questionText: "What is the slash-and-burn farming method and does it contribute to deforestation?", possibleAnswers: [
            "a. Yes, it is the method of burning crops so they grow faster.",
            "b. Yes, it is the method of burning trees to create fertile soil for farming.",
            "c.  No, it is a method to water plants and doesn't contribute to deforestation.",
            "d. No, it is method to create irrigation for farming, but doesn't contribute to deforestation."], 
                 correctAnswerIndex: 1),
        Question(questionText: "Which of these products are sustainable and don't lead to deforestation?", possibleAnswers: [
            "a. Paper",
            "b. Palm oil",
            "c. Beef",
            "d. Bamboo"], 
                 correctAnswerIndex: 3),
        Question(questionText: "Majority of land animals live in . . . ", possibleAnswers: [
            "a. Forests",
            "b. Oceans",
            "c. Deserts",
            "d. Grasslands"], correctAnswerIndex: 0),
        Question(questionText: "If some companies contribute to deforestation, then how can we fight against these companies?", possibleAnswers: [
            "a. Buy a lot of products from the company contributing to deforestation.",
            "b. Donate to the company that contributes to deforestation",
            "c. Boycott the company that contributes to deforestation and buy from sustainable countries",
            "d. We shouldn't do anything about companies who excesively contribute to deforestation"],
                 correctAnswerIndex: 2)
    ]

}
