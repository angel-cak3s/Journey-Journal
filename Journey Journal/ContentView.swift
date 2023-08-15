//
//  ContentView.swift
//  Journey Journal
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
