//
//  ContentView.swift
//  I_See
//
//  Created by MCBUCK54 on 10/16/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var name : String = "find item 1"
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .padding()
    
            Button("Greet") {
                let utterance = AVSpeechUtterance(string: "Hello \(name)")
                utterance.voice = AVSpeechSynthesisVoice(language: "en-au")
                utterance.rate = 0.3
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            }
            
            Text("Hello, world!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
