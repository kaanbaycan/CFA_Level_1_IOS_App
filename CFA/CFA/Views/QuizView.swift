import SwiftUI

struct QuizView: View {
    let module: StudyModule
    @State private var questions: [QuizQuestion] = []
    @State private var currentIndex = 0
    @State private var score = 0
    @State private var selectedOption: String? = nil
    @State private var isFinished = false
    
    #if os(iOS)
    private let hapticSuccess = UINotificationFeedbackGenerator()
    private let hapticError = UINotificationFeedbackGenerator()
    #endif
    
    init(module: StudyModule) {
        self.module = module
    }
    
    var body: some View {
        VStack {
            if isFinished {
                QuizSummaryView(score: score, total: questions.count, moduleName: module.name, reset: restartQuiz)
            } else if !questions.isEmpty {
                VStack(spacing: 20) {
                    // Header
                    HStack {
                        Text("Question \(currentIndex + 1) of \(questions.count)")
                            .font(.headline)
                        Spacer()
                        Text("Score: \(score)")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    .padding()
                    
                    // Progress Bar
                    ProgressView(value: Double(currentIndex + 1), total: Double(questions.count))
                        .padding(.horizontal)
                    
                    // The Term
                    Text(questions[currentIndex].term)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 30)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(15)
                        .padding(.horizontal)
                    
                    // The 4 Options
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(questions[currentIndex].options, id: \.self) { option in
                                OptionButton(
                                    option: option,
                                    correctAnswer: questions[currentIndex].correctDefinition,
                                    selectedOption: selectedOption,
                                    action: { selectOption(option) }
                                )
                            }
                        }
                        .padding()
                    }
                    
                    Spacer()
                    
                    // Next Button
                    if selectedOption != nil {
                        Button(action: nextQuestion) {
                            Text(currentIndex < questions.count - 1 ? "Next Question" : "Finish Quiz")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(12)
                        }
                        .padding()
                        .transition(.move(edge: .bottom))
                    }
                }
            }
        }
        .onAppear {
            questions = module.generateQuiz()
        }
        .navigationTitle("Practice Test")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func selectOption(_ option: String) {
        if selectedOption == nil {
            selectedOption = option
            if option == questions[currentIndex].correctDefinition {
                score += 1
                #if os(iOS)
                hapticSuccess.notificationOccurred(.success)
                #endif
            } else {
                #if os(iOS)
                hapticError.notificationOccurred(.error)
                #endif
            }
        }
    }
    
    func nextQuestion() {
        if currentIndex < questions.count - 1 {
            withAnimation {
                currentIndex += 1
                selectedOption = nil
            }
        } else {
            withAnimation {
                isFinished = true
            }
        }
    }
    
    func restartQuiz() {
        currentIndex = 0
        score = 0
        selectedOption = nil
        isFinished = false
        questions = module.generateQuiz()
    }
}

struct OptionButton: View {
    let option: String
    let correctAnswer: String
    let selectedOption: String?
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(option)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(borderColor, lineWidth: 2)
                )
        }
        .disabled(selectedOption != nil)
    }
    
    var backgroundColor: Color {
        if let selected = selectedOption {
            if option == correctAnswer {
                return Color.green.opacity(0.15)
            } else if option == selected {
                return Color.red.opacity(0.15)
            }
        }
        return Color.secondary.opacity(0.1)
    }
    
    var foregroundColor: Color {
        if let selected = selectedOption {
            if option == correctAnswer {
                return .green
            } else if option == selected {
                return .red
            }
        }
        return .primary
    }
    
    var borderColor: Color {
        if let selected = selectedOption {
            if option == correctAnswer {
                return .green
            } else if option == selected {
                return .red
            }
        }
        return Color.clear
    }
}

struct QuizSummaryView: View {
    let score: Int
    let total: Int
    let moduleName: String
    let reset: () -> Void
    
    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: "doc.text.badge.checkmark")
                .font(.system(size: 80))
                .foregroundColor(.blue)
            
            VStack(spacing: 10) {
                Text("Test Finished!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(moduleName)
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
            
            VStack(spacing: 5) {
                Text("\(score) / \(total)")
                    .font(.system(size: 60))
                    .fontWeight(.black)
                Text("Final Score")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Button(action: reset) {
                Text("Retake Test")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200)
                    .background(Color.blue)
                    .cornerRadius(12)
            }
            
            Spacer()
        }
        .padding(.top, 50)
    }
}
