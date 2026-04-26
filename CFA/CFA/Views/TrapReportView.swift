import SwiftUI

struct TrapReportView: View {
    let module: StudyModule
    
    var body: some View {
        List {
            Section {
                Text("These are common exam pitfalls and 'tricks' to watch out for in this module.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .listRowBackground(Color.clear)
            }
            
            if let traps = module.traps {
                ForEach(traps) { trap in
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Image(systemName: "exclamationmark.triangle.fill")
                                .foregroundColor(.red)
                            Text(trap.term)
                                .font(.headline)
                                .foregroundColor(.red)
                        }
                        
                        Text(trap.definition)
                            .font(.body)
                            .foregroundColor(.primary)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.vertical, 8)
                }
            }
        }
        .navigationTitle("Trap Report")
        #if os(iOS)
        .navigationBarTitleDisplayMode(.large)
        #endif
    }
}

struct TrapReportView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TrapReportView(module: FlashcardData.topics[0].modules[1])
        }
    }
}
