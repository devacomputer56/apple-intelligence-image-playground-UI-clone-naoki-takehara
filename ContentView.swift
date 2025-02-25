import SwiftUI

struct ImagePlaygroundView: View {
    @State private var animateGradient = false
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                HStack {
                    Button("Cancel") {}
                        .foregroundColor(.gray)
                        .padding()
                    Spacer()
                    Button("Done") {}
                        .foregroundColor(.yellow)
                        .padding()
                }
                
                Spacer()
                
                ZStack {
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [ animateGradient ? .blue : .red, animateGradient ? .purple : .yellow]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 220, height: 220)
                        .blur(radius: 30)
                        .shadow(color: .pink, radius: 80)
                        .onAppear {
                            withAnimation(.linear(duration: 2.0).repeatForever(autoreverses: true)) {
                                animateGradient.toggle()
                            }
                        }
                    
                    Image("Image Asset")
                        .resizable()
                        .aspectRatio(1, contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                    
                    TagView(text: "Sunglasses", color: .yellow, offset: CGSize(width: -90, height: -70))
                    TagView(text: "City", color: .blue, offset: CGSize(width: 90, height: -50))
                    TagView(text: "Puppy", color: .green, offset: CGSize(width: 0, height: 110))
                }
                
                Spacer()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(["Stage", "Disco", "Mountains", "Scarf", "Hiker"], id: \ .self) { item in
                            VStack {
                                Circle()
                                    .fill(Color.purple)
                                    .frame(width: 60, height: 60)
                                Text(item)
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}



struct ImagePlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePlaygroundView()
    }
}
