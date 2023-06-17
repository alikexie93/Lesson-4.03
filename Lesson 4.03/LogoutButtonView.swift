//
//  LogoutButtonView.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 17.06.2023.
//

import SwiftUI

struct LogoutButtonView: View {
    @EnvironmentObject private var user: UserSettings
    
    var body: some View {
        Button(action: { user.isLoggedIn = false }) {
            Text("Logout")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 343, height: 56)
        .background(.pink)
        .cornerRadius(16)
    }
    
}

struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView()
    }
}
