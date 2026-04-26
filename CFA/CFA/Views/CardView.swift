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
            CardContent(text: card.definition, color: Color(uiColor: .systemBackground), borderColor: isTrap ? .red : .orange, isTrap: isTrap)
                .rotation3DEffect(.degrees(isFlipped ? 0 : -180), axis: (x: 0, y: 1, z: 0))
                .opacity(isFlipped ? 1 : 0)
            
            // Front of the card (Term)
            CardContent(text: card.term, color: Color(uiColor: .systemBackground), borderColor: isTrap ? .red : .blue, isTrap: isTrap)
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
    
    private var isTrap: Bool {
        card.term.lowercased().contains("trap")
    }
}

struct CardContent: View {
    let text: String
    let color: Color
    let borderColor: Color
    let isTrap: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(color)
            .frame(width: 320, height: 450)
            .shadow(color: isTrap ? Color.red.opacity(0.1) : Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(isTrap ? Color.red.opacity(0.8) : borderColor.opacity(0.5), lineWidth: isTrap ? 4 : 2)
            )
            .overlay(
                VStack(spacing: 20) {
                    if isTrap {
                        HStack {
                            Image(systemName: "exclamationmark.triangle.fill")
                            Text("TRAP ALERT")
                                .fontWeight(.black)
                        }
                        .font(.caption)
                        .foregroundColor(.red)
                        .padding(.top, 20)
                    }
                    
                    Spacer()
                    
                    Text(text)
                        .font(text.count > 100 ? .headline : .title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(isTrap ? 20 : 30)
                    
                    Spacer()
                }
            )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Flashcard(term: "Anchoring bias", definition: "A psychological heuristic..."))
    }
}
