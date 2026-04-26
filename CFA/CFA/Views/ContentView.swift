import SwiftUI

struct ContentView: View {
    @StateObject private var masteryManager = MasteryManager.shared
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section {
                    VStack(alignment: .center, spacing: 10) {
                        ZStack {
                            Circle()
                                .fill(LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 80, height: 80)
                            
                            Text("CFA")
                                .font(.system(size: 24, weight: .black, design: .serif))
                                .foregroundColor(.white)
                        }
                        .shadow(radius: 5)
                        
                        Text("Chartered Financial Analyst")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .listRowBackground(Color.clear)
                }

                Section {
                    Button {
                        path.append(NavigationTarget.shuffledSet(masteryChallengeCards))
                    } label: {
                        HStack {
                            Image(systemName: "bolt.fill")
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.orange)
                                .cornerRadius(8)
                            VStack(alignment: .leading) {
                                Text("Mastery Challenge")
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                Text("20 cards weighted by performance")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .padding(.vertical, 4)
                    
                    Button {
                        let allCards = FlashcardData.topics.flatMap { $0.modules.flatMap { $0.cards } }
                        path.append(NavigationTarget.flashcards(StudyModule(name: "Full Bank Review", cards: allCards.shuffled())))
                    } label: {
                        HStack {
                            Image(systemName: "infinity")
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.blue)
                                .cornerRadius(8)
                            VStack(alignment: .leading) {
                                Text("Full Review")
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                Text("Study every card in the bank")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .padding(.vertical, 4)
                } header: {
                    Text("Special Study")
                }

                Section {
                    ForEach(FlashcardData.topics) { topic in
                        Button {
                            path.append(topic)
                        } label: {
                            HStack {
                                Image(systemName: "graduationcap.fill")
                                    .foregroundColor(.blue)
                                VStack(alignment: .leading) {
                                    Text(topic.name)
                                        .font(.headline)
                                        .foregroundColor(.primary)
                                    Text("Weight: \(topic.weight)")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                    }
                } header: {
                    Text("Topic Areas")
                }
            }
            .navigationTitle("CFA Mastery")
            .navigationDestination(for: TopicArea.self) { topic in
                ModuleListView(topic: topic, path: $path)
            }
            .navigationDestination(for: NavigationTarget.self) { target in
                switch target {
                case .flashcards(let module):
                    FlashcardDeckView(module: module)
                case .quiz(let module):
                    QuizView(module: module)
                case .shuffledSet(let cards):
                    FlashcardDeckView(module: StudyModule(name: "Mixed Practice", cards: cards))
                case .trapReport(let module):
                    TrapReportView(module: module)
                case .summary(let module):
                    SummaryView(module: module)
                }
            }
        }
    }
    
    var masteryChallengeCards: [Flashcard] {
        let cards = FlashcardData.topics.flatMap { $0.modules.flatMap { $0.cards } }
        return masteryManager.getWeightedRandomCards(from: cards, count: 20)
    }
}

struct ModuleListView: View {
    let topic: TopicArea
    @Binding var path: NavigationPath
    
    var body: some View {
        List {
            Section {
                VStack(spacing: 12) {
                    HStack(spacing: 15) {
                        Button {
                            let allCards = topic.modules.flatMap { $0.cards }
                            path.append(NavigationTarget.flashcards(StudyModule(name: "\(topic.name): All", cards: allCards.shuffled())))
                        } label: {
                            Label("Study All", systemImage: "book.circle.fill")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        
                        Button {
                            let allCards = topic.modules.flatMap { $0.cards }
                            let allQuestions = topic.modules.flatMap { $0.manualQuestions ?? [] }
                            path.append(NavigationTarget.quiz(StudyModule(name: "\(topic.name): All", cards: allCards, manualQuestions: allQuestions.shuffled())))
                        } label: {
                            Label("Test All", systemImage: "checkmark.circle.fill")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                    }
                }
                .padding(.vertical, 8)
            } header: {
                Text("Area Review")
            }

            Section {
                ForEach(topic.modules) { module in
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(module.name)
                                .font(.headline)
                            Text("\(module.cards.count) cards")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        HStack(spacing: 15) {
                            Button {
                                path.append(NavigationTarget.flashcards(module))
                            } label: {
                                Label("Study", systemImage: "book.fill")
                                    .frame(maxWidth: .infinity)
                            }
                            .buttonStyle(.bordered)
                            .tint(.blue)
                            
                            Button {
                                path.append(NavigationTarget.quiz(module))
                            } label: {
                                Label("Test", systemImage: "checkmark.seal.fill")
                                    .frame(maxWidth: .infinity)
                            }
                            .buttonStyle(.bordered)
                            .tint(.orange)
                        }
                        .controlSize(.small)
                        
                        if let traps = module.traps, !traps.isEmpty {
                            Button {
                                path.append(NavigationTarget.trapReport(module))
                            } label: {
                                Label("Trap Report", systemImage: "exclamationmark.triangle.fill")
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 8)
                                    .background(Color.red.opacity(0.1))
                                    .foregroundColor(.red)
                                    .cornerRadius(8)
                            }
                            .padding(.top, 4)
                        }
                        
                        if let _ = module.summary {
                            Button {
                                path.append(NavigationTarget.summary(module))
                            } label: {
                                Label("Review Summary", systemImage: "doc.text.fill")
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 8)
                                    .background(Color.blue.opacity(0.1))
                                    .foregroundColor(.blue)
                                    .cornerRadius(8)
                            }
                            .padding(.top, 4)
                        }
                    }
                    .padding(.vertical, 8)
                }
            } header: {
                Text("Modules")
            }
        }
        .navigationTitle(topic.name)
    }
}

enum NavigationTarget: Hashable {
    case flashcards(StudyModule)
    case quiz(StudyModule)
    case shuffledSet([Flashcard])
    case trapReport(StudyModule)
    case summary(StudyModule)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
