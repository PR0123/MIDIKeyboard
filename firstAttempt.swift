
struct Geo: ViewModifier {
    var block: (Bool)->()
    @State private var location = CGPoint.zero
    func body(content: Content) -> some View {
        
        return GeometryReader{ g in
            content
            .onChange(of: location) { newValue in
                block(g.frame(in: .local).contains(location))
            }
            .gesture(
                DragGesture()
                .onChanged { gesture in
                    location = gesture.location
                }
                .onEnded{ _ in
                    block(false)
                }
            )
        }
    }
}

extension View {
    func onSlide(_ block: @escaping (Bool)->()) -> some View {
        modifier(Geo(block: block))
    }
}

struct ContentView: View{
    
    @State var isEntered1 = false
    @State var isEntered2 = false
    @State var isEntered3 = false
    var body: some View{
        HStack{
            Rectangle()
                .fill(isEntered1 ? .red : .green)
                .onSlide { over in self.isEntered1 = over }
            Rectangle()
                .fill(isEntered2 ? .red : .green)
                .onSlide { over in self.isEntered2 = over }
            Rectangle()
                .fill(isEntered3 ? .red : .green)
                .onSlide { over in self.isEntered3 = over }
            
        }.frame(width: 200, height: 200)
    }
}

PlaygroundPage.current.setLiveView(ContentView())
