import SwiftUI

struct SummaryView: View {
    let module: StudyModule
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                if let summary = module.summary {
                    Text(summary)
                        .font(.body)
                        .lineSpacing(6)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(uiColor: .secondarySystemBackground))
                        )
                }
            }
            .padding()
        }
        .navigationTitle("Module Summary")
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SummaryView(module: FlashcardData.topics[0].modules[1])
        }
    }
}
