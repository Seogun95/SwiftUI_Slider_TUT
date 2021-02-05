//
//  ContentView.swift
//  SwiftUI_Slider_TUT
//
//  Created by 김선중 on 2021/02/06.
//

import SwiftUI

struct ContentView: View {
     //1.
    @State private var sliderValue:Double = 25
    var minimumValue = 0.0
    var maximumValue = 100.0
    
    var body: some View {
        VStack {
            HStack {
                     //Int 값 안에 더블값
                Text("\(Int(minimumValue))")
                
                //2.
                Slider(value: $sliderValue, in: minimumValue...maximumValue, step: 10)
                    .accentColor(.orange)
                
                Text("\(Int(maximumValue))")
            }
            .padding()
            //3.
            Text("슬라이더 값은 '\(sliderValue, specifier: "%.1f")' 입니다.")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
