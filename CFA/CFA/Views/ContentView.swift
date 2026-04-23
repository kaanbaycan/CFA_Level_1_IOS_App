import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(FlashcardData.topics) { topic in
                NavigationLink(value: topic) {
                    HStack {
                        Image(systemName: "book.fill")
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text(topic.name)
                                .font(.headline)
                            Text("Weight: \(topic.weight)")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("CFA Topics")
            .navigationDestination(for: TopicArea.self) { topic in
                ModuleListView(topic: topic)
            }
        }
    }
}

struct ModuleListView: View {
    let topic: TopicArea
    
    var body: some View {
        List(topic.modules) { module in
            VStack(alignment: .leading, spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(module.name)
                        .font(.headline)
                    Text("\(module.cards.count) cards")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                HStack(spacing: 15) {
                    NavigationLink(value: NavigationTarget.flashcards(module)) {
                        Label("Study", systemImage: "book.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                    .tint(.blue)
                    
                    NavigationLink(value: NavigationTarget.quiz(module)) {
                        Label("Test", systemImage: "checkmark.seal.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.bordered)
                    .tint(.orange)
                }
                .controlSize(.small)
            }
            .padding(.vertical, 8)
        }
        .navigationTitle(topic.name)
        .navigationDestination(for: NavigationTarget.self) { target in
            switch target {
            case .flashcards(let module):
                FlashcardDeckView(module: module)
            case .quiz(let module):
                QuizView(module: module)
            }
        }
    }
}

enum NavigationTarget: Hashable {
    case flashcards(StudyModule)
    case quiz(StudyModule)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
