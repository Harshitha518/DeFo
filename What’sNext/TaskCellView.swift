// This struct defines the view of the task cells / checkboxes that are used in the ImpactView.
import SwiftUI

struct TaskCellView: View {
    @Binding var task:Task
    var body: some View {
        HStack {
            Image(systemName: task.symbol)
                .foregroundStyle(.green)
            Button(task.name) {
                task.showingAlert.toggle()
            }
            .alert(task.message, isPresented: $task.showingAlert) {
                Button("Got it!", role: .cancel) {}
            }
            .bold()
            .foregroundStyle(.green)
            .opacity(task.isCompleted ? 0.5 : 1.0)
            
            Spacer()
            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                .font(.system(size: 24))
                .scaleEffect(task.isCompleted ? 1.0 : 0.75)
                .foregroundStyle(task.isCompleted ? .green : .black)
                .padding()
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        task.isCompleted.toggle()
                        
                    }
                } 
        }
        .padding()
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(.top)
    }
}
