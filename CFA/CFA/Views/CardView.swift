import SwiftUI

struct CardView: View {
    let card: Flashcard
    @State private var isFlipped = false
    
    #if os(iOS)
    private let impactFeedback = UIImpactFeedbackGenerator(style: .light)
    #endif
    
    var body: some View {
        ZStack {
            // Back of the card (Definition)
            CardContent(text: card.definition, color: Color(uiColor: .systemBackground), borderColor: .orange)
                .rotation3DEffect(.degrees(isFlipped ? 0 : -180), axis: (x: 0, y: 1, z: 0))
                .opacity(isFlipped ? 1 : 0)
            
            // Front of the card (Term)
            CardContent(text: card.term, color: Color(uiColor: .systemBackground), borderColor: .blue)
                .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                .opacity(isFlipped ? 0 : 1)
        }
        .onTapGesture {
            #if os(iOS)
            impactFeedback.impactOccurred()
            #endif
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0)) {
                isFlipped.toggle()
            }
        }
    }
}

struct CardContent: View {
    let text: String
    let color: Color
    let borderColor: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(color)
            .frame(width: 320, height: 450)
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(borderColor.opacity(0.5), lineWidth: 2)
            )
            .overlay(
                VStack {
                    Text(text)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(30)
                }
            )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Flashcard(term: "Anchoring bias", definition: "A psychological heuristic..."))
    }
}
