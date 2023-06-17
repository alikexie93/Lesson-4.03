//
//  TimerButtonView.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 17.06.2023.
//

import SwiftUI

struct TimerButtonView: View {
    @ObservedObject var timer: TimerCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 343, height: 56)
        .background(.blue)
        .cornerRadius(16)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TimerButtonView(timer: TimerCounter())
    }
}
