import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Image("Image")
                .resizable()
                .scaledToFit()
                .padding()
            CarouselView()
            QuickLinksView()
        }
    }
    
}

#Preview {
    ContentView()
}

