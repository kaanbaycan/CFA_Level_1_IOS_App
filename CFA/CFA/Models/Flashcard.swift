import Foundation

struct Flashcard: Identifiable, Codable, Hashable {
    var id = UUID()
    let term: String
    let definition: String
    var masteryLevel: Int = 0 // 0: New, 1-3: Learning, 4+: Mastered
    var lastReviewed: Date?
    
    // Weighted probability: Higher mastery means lower probability
    var weight: Double {
        switch masteryLevel {
        case 0: return 1.0
        case 1: return 0.8
        case 2: return 0.5
        case 3: return 0.2
        default: return 0.05 // Mastered cards still appear occasionally
        }
    }
}

struct StudyModule: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let cards: [Flashcard]
    var manualQuestions: [ManualQuestion]? = nil
    var traps: [Flashcard]? = nil
    var summary: String? = nil
}

struct ManualQuestion: Identifiable, Hashable {
    var id = UUID()
    let question: String
    let correctAnswer: String
    let options: [String]
}

struct TopicArea: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let weight: String
    let modules: [StudyModule]
}
