import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .padding()
                CarouselView()
                Text("Quick Links")
                    .frame(width: geo.size.width - 20, alignment: .leading)
                    .font(.largeTitle)
                    .bold()
                    .ignoresSafeArea()
                    .padding(10)
                    .foregroundStyle(.accent)
                Rectangle()
                    .frame(width: geo.size.width - 50, height: 0.8)
                    .foregroundStyle(.accent)
                QuickLinksView()
            }
        }
    }
}

#Preview {
    ContentView()
}

