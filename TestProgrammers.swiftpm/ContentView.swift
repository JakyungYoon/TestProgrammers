import SwiftUI
import Foundation
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(Programmers.solution(arr:[1,2,3,4]))")
        }
    }
}
