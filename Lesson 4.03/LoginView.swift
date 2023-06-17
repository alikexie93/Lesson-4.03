//
//  LoginView.swift
//  Lesson 4.03
//
//  Created by Алексей Филиппов on 15.06.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var name = ""
    @FocusState private var isInputActive: Bool
    
    @EnvironmentObject private var user: UserSettings
    @ObservedObject private var storageManager = StorageManager.shared
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                TextFieldView(name: $name)
                
                Spacer()
                
                LoginButtonView(name: $name)

            }
            .focused($isInputActive)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Done") {
                        isInputActive = false
                    }
                }
            }
        }
        .padding()
        .onTapGesture {
            isInputActive = false
        }
        .onAppear {
            name = storageManager.username ?? ""
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
