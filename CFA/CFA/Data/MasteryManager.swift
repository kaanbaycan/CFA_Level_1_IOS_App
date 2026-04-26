import Foundation
import SwiftUI
internal import Combine

class MasteryManager: ObservableObject {
    static let shared = MasteryManager()
    
    @Published var masteryData: [String: Int] = [:] // Term: Level
    
    private let storageKey = "CFA_Mastery_Data"
    
    init() {
        loadData()
    }
    
    func getLevel(for term: String) -> Int {
        return masteryData[term] ?? 0
    }
    
    func updateMastery(for term: String, increment: Bool) {
        let currentLevel = getLevel(for: term)
        if increment {
            masteryData[term] = currentLevel + 1
        } else {
            masteryData[term] = max(0, currentLevel - 1)
        }
        saveData()
    }
    
    private func saveData() {
        if let encoded = try? JSONEncoder().encode(masteryData) {
            UserDefaults.standard.set(encoded, forKey: storageKey)
        }
    }
    
    private func loadData() {
        if let data = UserDefaults.standard.data(forKey: storageKey),
           let decoded = try? JSONDecoder().decode([String: Int].self, from: data) {
            masteryData = decoded
        }
    }
    
    func getWeightedRandomCards(from allCards: [Flashcard], count: Int) -> [Flashcard] {
        guard !allCards.isEmpty else { return [] }
        
        var selectedCards: [Flashcard] = []
        var pool = allCards.map { card -> (Flashcard, Double) in
            var mutableCard = card
            mutableCard.masteryLevel = getLevel(for: card.term)
            return (mutableCard, mutableCard.weight)
        }
        
        for _ in 0..<min(count, allCards.count) {
            let totalWeight = pool.reduce(0) { $0 + $1.1 }
            let randomValue = Double.random(in: 0...totalWeight)
            
            var currentSum = 0.0
            for (index, item) in pool.enumerated() {
                currentSum += item.1
                if randomValue <= currentSum {
                    selectedCards.append(item.0)
                    pool.remove(at: index)
                    break
                }
            }
        }
        
        return selectedCards
    }
}
