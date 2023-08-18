//
//  Info.swift
//  Journey Journal
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct Info: View {
    var body: some View {
        ZStack {
            // first layer = painting
            Color(red: 1, green: 0.98, blue: 0.96)
                .ignoresSafeArea()
            VStack {
                
                Text("Art & Mental Health")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
