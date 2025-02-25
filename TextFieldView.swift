import SwiftUI

struct TextFieldView: View{
    @State private var prompt = ""
    var body: some View{
        HStack{
            ZStack{
                Capsule()
                    .foregroundStyle(.ultraThinMaterial)
                    .frame(maxWidth: .infinity, maxHeight: 55)
                HStack{
                    Image(systemName: "apple.intelligence")
                        .padding(.horizontal, 3)
                        .font(.system(size: 35))
                        .modifier(Aicolor())
                        
                    TextField("Describe an image", text: $prompt)
                        .padding(.trailing)
                }
            }
            .padding(3)
            
            ZStack{
                Circle()
                    .foregroundStyle(.ultraThinMaterial)
                    .frame(width: 55)
                Image(systemName: "person.fill")
                    .font(.system(size: 35))
                    .modifier(Aicolor())
            }
            .padding(3)
            ZStack{
                Circle()
                    .foregroundStyle(.ultraThinMaterial)
                    .frame(width: 55)
                Image(systemName: "plus")
                    .font(.system(size: 35))
                    .modifier(Aicolor())
            }
            .padding(3)
                
        }
    }
}

struct Aicolor: ViewModifier {
    func body(content: Content) -> some View{
        content
            .foregroundStyle(
                LinearGradient(colors: [
                    .yellow, .red,
                    .blue, .pink
                ], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
    }
}


#Preview{
    TextFieldView()
}
