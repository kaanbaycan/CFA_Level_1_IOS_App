import SwiftUI

struct FlashcardDeckView: View {
    let module: StudyModule
    @State private var cards: [Flashcard]
    @State private var currentIndex = 0
    @State private var isCompleted = false
    
    // Haptic Feedback Generator
    #if os(iOS)
    private let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
    private let selectionFeedback = UISelectionFeedbackGenerator()
    #endif

    init(module: StudyModule) {
        self.module = module
        _cards = State(initialValue: module.cards)
    }
    
    var body: some View {
        VStack {
            if isCompleted {
                VStack(spacing: 20) {
                    Image(systemName: "checkmark.seal.fill")
                        .font(.system(size: 80))
                        .foregroundColor(.green)
                    Text("Module Completed!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("You've mastered \(cards.count) terms.")
                        .foregroundColor(.secondary)
                    
                    Button("Study Again") {
                        withAnimation {
                            resetDeck()
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.top)
                }
                .transition(.scale)
            } else {
                Spacer()
                
                // Progress Header & Bar
                VStack(spacing: 8) {
                    Text(module.name)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    // Simple Progress Bar
                    ZStack(alignment: .leading) {
                        Capsule()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 8)
                        
                        Capsule()
                            .fill(Color.blue)
                            .frame(width: CGFloat(currentIndex + 1) / CGFloat(cards.count) * 300, height: 8)
                    }
                    .frame(width: 300)
                    
                    Text("\(currentIndex + 1) of \(cards.count)")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                // Card View with Mastery Badge
                VStack(spacing: 15) {
                    let level = MasteryManager.shared.getLevel(for: cards[currentIndex].term)
                    HStack {
                        Spacer()
                        Text(level >= 4 ? "MASTERED" : (level == 0 ? "NEW" : "LEARNING"))
                            .font(.caption2)
                            .fontWeight(.bold)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(level >= 4 ? Color.green : (level == 0 ? Color.blue : Color.orange))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal, 40)
                    
                    CardView(card: cards[currentIndex])
                        .id(cards[currentIndex].id)
                }
                
                Spacer()
                
                // Mastery Feedback Buttons
                HStack(spacing: 30) {
                    Button(action: { markKnowledge(known: false) }) {
                        VStack {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.red)
                            Text("Don't Know")
                                .font(.caption)
                                .foregroundColor(.red)
                        }
                    }
                    
                    Button(action: { markKnowledge(known: true) }) {
                        VStack {
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.green)
                            Text("I Know It")
                                .font(.caption)
                                .foregroundColor(.green)
                        }
                    }
                }
                .padding(.bottom, 20)
                
                // Navigation Controls
                HStack(spacing: 60) {
                    Button(action: previousCard) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 24, weight: .bold))
                    }
                    .disabled(currentIndex == 0)
                    
                    Button(action: shuffleCards) {
                        Image(systemName: "shuffle")
                            .font(.system(size: 24, weight: .bold))
                    }
                    
                    Button(action: nextCard) {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 24, weight: .bold))
                    }
                }
                .padding(.bottom, 30)
            }
        }
        .padding()
        .navigationTitle("Flashcards")
        .onChange(of: module) { newModule in
            cards = newModule.cards
            currentIndex = 0
            isCompleted = false
        }
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
    }
    
    func markKnowledge(known: Bool) {
        MasteryManager.shared.updateMastery(for: cards[currentIndex].term, increment: known)
        #if os(iOS)
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(known ? .success : .warning)
        #endif
        nextCard()
    }
    
    func nextCard() {
        if currentIndex < cards.count - 1 {
            withAnimation {
                currentIndex += 1
            }
            #if os(iOS)
            selectionFeedback.selectionChanged()
            #endif
        } else {
            withAnimation {
                isCompleted = true
            }
        }
    }
    
    func previousCard() {
        if currentIndex > 0 {
            withAnimation {
                currentIndex -= 1
            }
            #if os(iOS)
            selectionFeedback.selectionChanged()
            #endif
        }
    }
    
    func shuffleCards() {
        withAnimation {
            cards.shuffle()
            currentIndex = 0
        }
        #if os(iOS)
        impactFeedback.impactOccurred()
        #endif
    }
    
    func resetDeck() {
        currentIndex = 0
        isCompleted = false
    }
}
