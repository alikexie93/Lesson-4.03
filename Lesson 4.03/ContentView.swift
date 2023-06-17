//
//  ContentView.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 14.06.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimerCounter()
    @EnvironmentObject private var user: UserSettings
    @ObservedObject private var storageManager = StorageManager.shared
    
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)!")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            VStack(spacing: 24) {
                TimerButtonView(timer: timer)
                LogoutButtonView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}
