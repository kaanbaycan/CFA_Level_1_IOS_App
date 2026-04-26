import Foundation

struct QuizQuestion: Identifiable {
    let id = UUID()
    let term: String
    let correctDefinition: String
    let options: [String]
}

extension StudyModule {
    func generateQuiz() -> [QuizQuestion] {
        if let manual = manualQuestions, !manual.isEmpty {
            return manual.map { q in
                QuizQuestion(
                    term: q.question,
                    correctDefinition: q.correctAnswer,
                    options: q.options
                )
            }
        }
        
        var questions: [QuizQuestion] = []
        let allDefinitions = cards.map { $0.definition }
        
        for card in cards {
            // Get 3 random distractors from other cards in the module
            var distractors = allDefinitions.filter { $0 != card.definition }
            distractors.shuffle()
            
            // Take up to 3 distractors
            let selectedDistractors = Array(distractors.prefix(3))
            
            // Combine and shuffle options
            var options = selectedDistractors + [card.definition]
            options.shuffle()
            
            questions.append(QuizQuestion(
                term: card.term,
                correctDefinition: card.definition,
                options: options
            ))
        }
        
        return questions.shuffled()
    }
}
