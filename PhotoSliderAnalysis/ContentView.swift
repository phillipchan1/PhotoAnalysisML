//
//  ContentView.swift
//  PhotoSliderAnalysis
//
//  Created by Phillip Chan on 1/14/21.
//

import SwiftUI
let model = MobileNetV2()

func detectImage() {
    print("detecting image")
    guard let image = UIImage(named: "banana"), let CVimage = image.toBuffer(from: image) else {
        return
    }
    
    let output = try? model.prediction(image: CVimage)
    
    print(output?.classLabelProbs)
    print(output?.classLabel)
    
    
}

struct ContentView: View {
    
        
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button(action: {
                detectImage()
            }) {
                Text("Button")
            }
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
