//
//  ContentView.swift
//  Shared
//
//  Created by Tsai Meng Han on 2022/7/19.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    fileprivate func speechText(text: String, languageCode: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: languageCode)
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Hello, world!")
                    .font(.system(.title2, design: .rounded) )
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                .padding()
                
                Button {
                    speechText(text: "hello", languageCode: "en-GB")
                } label: {
                    Text("click")
                        .font(.system(size: 10, design: .rounded))
                        .fontWeight(.bold)
                        .padding(5)
                }
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(20)

            }
            
            HStack {
                Text("I love iOS !")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.thin)
                    .foregroundColor(Color.gray)
                .padding()
                
                Button {
                    // perform action after button click
                    speechText(text: "I love ios!", languageCode: "en-US")
                    
                } label: {
                    Text("click")
                        .font(.system(size: 10, design: .rounded))
                        .fontWeight(.bold)
                        .padding(5)
                }
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(20)
                
            }
            Spacer()
            HStack{
                Image("user1")
                Image("user2")
                Image("user3")
            }
        }.background(Image("BG")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(width: 400, height: 400)
                        .aspectRatio(1, contentMode: .fit))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        ContentView().previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch)"))
        
    }
}
