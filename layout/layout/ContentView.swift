//
//  ContentView.swift
//  layout
//
//  Created by Tsai Meng Han on 2022/7/19.
//

import SwiftUI


struct MyModifier: ViewModifier{
    
    var textStyle: Font.TextStyle
    
    init(_ fontTextStyle: Font.TextStyle){
        self.textStyle = fontTextStyle
    }
    
    
    func body(content: Content) -> some View {
        content.font(.system(textStyle))
            .padding()
    }
}

struct buttonModifier: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .frame(width:200)
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}


struct ContentView: View {
    
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        
        VStack {
            VStack {
                Text("Hello!")
                    .modifier(MyModifier(.title2))
                
                Text("world!")
                    .font(.system(.title2))
                    .padding()
            }
            
            HStack{
                Image("user1")
                Image("user2")
                Image("user3")
            }
            
            Spacer()
            
//            if verticalSizeClass == .compact {
//                print("bbbb")
//            } else {
//                print("aaa")
//            }
            
            VStack{
                
                Button {
                    // perform action after button click
                    //                    speechText(text: "I love ios!", languageCode: "en-US")
                    
                } label: {
                    Text("click")
                }
                .modifier(buttonModifier())
                
                Button {
                    // perform action after button click
                    //                    speechText(text: "I love ios!", languageCode: "en-US")
                    
                } label: {
                    Text("click")
                        .font(.system(size: 10, design: .rounded))
                        .fontWeight(.bold)
                        .padding(5)
                }
                .modifier(buttonModifier())
                
            }
        }
        //.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("BG")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width: 400, height: 400)
                .aspectRatio(1, contentMode: .fit)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        ContentView().previewInterfaceOrientation(.landscapeRight)
    }
}
