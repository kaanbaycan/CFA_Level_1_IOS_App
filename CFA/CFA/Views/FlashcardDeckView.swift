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
                
                // Card View
                CardView(card: cards[currentIndex])
                    .id(cards[currentIndex].id)
                
                Spacer()
                
                // Navigation Controls
                HStack(spacing: 40) {
                    Button(action: previousCard) {
                        Image(systemName: "arrow.left.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(currentIndex > 0 ? .blue : .gray)
                    }
                    .disabled(currentIndex == 0)
                    
                    Button(action: shuffleCards) {
                        Image(systemName: "shuffle.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.orange)
                    }
                    
                    Button(action: nextCard) {
                        Image(systemName: "arrow.right.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.blue)
                    }
                }
                .padding(.bottom, 50)
            }
        }
        .padding()
        .navigationTitle("Flashcards")
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
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
