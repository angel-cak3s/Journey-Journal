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
                
                Text("How Art can improve your Mental Health \n")
                
                Text("Stress Relief")
                    .fontWeight(.semibold)
                
                Text ("Studies have shown that drawing, doodling, coloring, and simply creating something for 20+ minutes reduces cortisol, which helps regulate your body’s response to stress. \n")
                
                     
                Text("Boosts Self Esteem")
                    .fontWeight(.semibold)
                      
                Text ("Creativity and the practice of art can build a sense of accomplishment for all ages, as it 'makes us feel good about ourselves' and validates our  our ability to turn unique ideas into something physical \n")
                      
                Text ("Healing")
                    .fontWeight(.semibold)
                
                Text ("It has been proven by much research that art making can help in processing pain, and provide a direct connection between to mind and the body to further aid to healing process \n")
                      
                Text ("Letting Go")
                    .fontWeight(.semibold)
                
                Text ("Expressive art, such as visual arts, music, and dance, can help users laugh, let go, and relax, thus decreasing depression, anxiety, and stress.")
                    

            }
        }
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
