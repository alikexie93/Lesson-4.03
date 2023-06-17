//
//  LoginButtonView.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 17.06.2023.
//

import SwiftUI

struct LoginButtonView: View {
    @Binding var name: String
    private var isEnabled: Bool {
        name.count >= 3
    }
    
    @EnvironmentObject private var user: UserSettings
    
    var body: some View {
        Button(action: login) {
            Image(systemName: "checkmark.circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
            Text("OK")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 343, height: 56)
        .background(isEnabled ? .blue : .gray)
        .disabled(!isEnabled)
        .cornerRadius(16)
    }
    
    private func login() {
        if name.count >= 3 {
            user.name = name
            user.isLoggedIn.toggle()
        }
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView(name: .constant(""))
    }
}
