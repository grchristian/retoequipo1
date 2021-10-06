import SwiftUI
import ConcentricOnboarding

struct ContentView: View {
    
    @State private var currentIndex: Int = 0
    
    var body: some View {
        ConcentricOnboardingView(pageContents: MockData.pages.map { (PageView(page: $0), $0.color) })
            .duration(1.0)
            .nextIcon("chevron.forward")
            .animationDidEnd {
                print("Animation Did End")
            }
    }
}