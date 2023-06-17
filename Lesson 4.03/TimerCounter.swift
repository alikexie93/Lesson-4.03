//
//  TimerCounter.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 15.06.2023.
//

import Foundation
import Combine

final class TimerCounter: ObservableObject {
    var counter = 3
    var buttonTitle = "Start"
    
    let objectWillChange = ObservableObjectPublisher()
    
    private var timer: Timer?
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        
        buttonDidTapped()
        
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "Reset"
        }
        
        objectWillChange.send()
        
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDidTapped() {
        if buttonTitle == "Reset" {
            counter = 3
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
        
        objectWillChange.send()
    }
}
