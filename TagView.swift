import SwiftUI

struct TagView: View {
    let text: String
    let color: Color
    let offset: CGSize
    
    var body: some View {
        Text(text)
            .font(.caption)
            .bold()
            .padding(5)
            .background(color.opacity(0.8))
            .foregroundColor(.black)
            .clipShape(Capsule())
            .offset(offset)
    }
}
