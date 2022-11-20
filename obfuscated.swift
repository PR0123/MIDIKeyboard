import SwiftUI
import PlaygroundSupport

struct ContentView: View{
    @State var isHovered = Array(repeating: false, count: 8)
    @State private var location = CGPoint.zero
    var body: some View{
        HStack{
            ForEach(0..<8){ i in
                GeometryReader{ g in
                    Rectangle()
                    .fill(isHovered[i] ? .orange : .gray)
                    .onChange(of: location) { newValue in
                        isHovered[i] = g.frame(in: .named("keyboardSpace")).contains(location)
                    }
                }
            }
        }
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    location = gesture.location
                }
                .onEnded{ _ in
                    isHovered = Array(repeating: false, count: 8)
                }
        )
        .frame(width: 500, height: 500)
        .coordinateSpace(name: "keyboardSpace")
    }
}

PlaygroundPage.current.setLiveView(ContentView())
