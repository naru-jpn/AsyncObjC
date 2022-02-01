//
//  ContentView.swift
//  AsyncObjC
//
//  Created by Naruki Chigira on 2022/02/02.
//

import SwiftUI

struct ContentView: View {
    @State private var opacity: CGFloat = 1

    var body: some View {
        Text("Hello, world!")
            .padding()
            .opacity(opacity)
            .onAppear {
                withAnimation(Animation.linear(duration: 1).repeatForever()) {
                    self.opacity = 0
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
