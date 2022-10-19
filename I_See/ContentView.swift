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

        Text("Hello, world!")
     let isLogging: Bool = true
        
        VStack {
            TextField("Name", text: $name)
                .padding()
    
            Button("Greet") {
                if isLogging {
                    createLogFile()
                    NSLog("starting")

                let utterance = AVSpeechUtterance(string: "Hello \(name)")
                utterance.voice = AVSpeechSynthesisVoice(language: "en-au")
                utterance.rate = 0.3
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
parseJSON()
            

                }
        }
    }
}
    
    
    private func parseJSON() {
        print("entering parseJSON")
        NSLog("Entering parseJSON ")
        guard let path = Bundle.main.path(forResource: "Items", ofType: "json") else {
            //            Logger.shared.debugPrint("Path: \(path)")
            return
        }
        let url = URL(fileURLWithPath: path)
        Logger.shared.debugPrint("URL: \(url)")
        var result: Result2?
        do {
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result2.self, from: jsonData)
            
            if let result = result {
                print(result)
            } else {
                print("Failed to parse")
            }
            return
        }
        
        catch {
            print("error: \(error)")
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
