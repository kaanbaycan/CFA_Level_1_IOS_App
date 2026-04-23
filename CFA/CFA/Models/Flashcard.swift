import Foundation

struct Flashcard: Identifiable, Codable, Hashable {
    var id = UUID()
    let term: String
    let definition: String
}

struct StudyModule: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let cards: [Flashcard]
}

struct TopicArea: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let weight: String
    let modules: [StudyModule]
}
